import json
import time
import threading
import asyncio
from mcp.client.session import ClientSession
from mcp.client.sse import sse_client

session_ready = threading.Event()

def before_all(context):
    context._task_queue = asyncio.Queue()
    context._result_queue = asyncio.Queue()

    def run_loop():
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)

        async def mcp_worker():
            try:
                async with sse_client("http://localhost:8000/sse") as streams:
                    async with ClientSession(*streams) as session:
                        await session.initialize()
                        context.session = session
                        session_ready.set()

                        while True:
                            task = await context._task_queue.get()
                            if task is None:
                                break
                            coro = task
                            result = await coro
                            await context._result_queue.put(result)

            except Exception as e:
                print(f"MCP inicial failed: {repr(e)}")
                session_ready.set()

        loop.run_until_complete(mcp_worker())

    thread = threading.Thread(target=run_loop, daemon=True)
    thread.start()

    session_ready.wait()


def after_all(context):
    if hasattr(context, "_task_queue"):
        # 发 None 让 loop 退出
        asyncio.run(context._task_queue.put(None))


def call_tool_sync(context, coro, timeout=20):
    context._task_queue.put_nowait(coro)

    start = time.time()
    while True:
        try:
            result = context._result_queue.get_nowait()
            return result
        except asyncio.QueueEmpty:
            if time.time() - start > timeout:
                raise TimeoutError("MCP call tool timed out")
            time.sleep(0.5)

def get_tool_json(result):
    try:
        if isinstance(result, str):
            return result
        items = getattr(result, "content", None)
        if items:
            for item in items:
                if getattr(item, "text", None):
                    text = getattr(item, "text", None)
                    return json.loads(text)
    except Exception as e:
        print(f"Error getting tool JSON: {e}")
        
    return None


def before_scenario(context, scenario):
    context.scenario = scenario
    result = call_tool_sync(context, context.session.call_tool(name="browser_launch", arguments={"caller": "behave"}))
    result_json = get_tool_json(result)
    assert result_json.get("status") == "success", f"Expected status to be 'success', got '{result_json.get('status')}', error: '{result_json.get('error')}'" 


def after_scenario(context, scenario):
    context.scenario = scenario
    result = call_tool_sync(context, context.session.call_tool(name="browser_close", arguments={"caller": "behave"}))
    