
from behave import *
import logging
from features.environment import call_tool_sync, get_tool_json


# --- auto-generated step ---
@given('navigate to "{param}"')
def step_impl(context, param):
    result = call_tool_sync(context, context.session.call_tool(name="native_navigate", arguments={'url': param, 'caller': 'behave'}))
    result_json = get_tool_json(result)
    assert result_json.get("status") == "success", f"Expected status to be 'success', got '{result_json.get('status')}', error: '{result_json.get('error')}'" 

# --- auto-generated step ---
@given('navigate to https://www.bing.com')
def step_impl(context):
    result = call_tool_sync(context, context.session.call_tool(name="native_navigate", arguments={'url': 'https://www.bing.com', 'caller': 'behave'}))
    result_json = get_tool_json(result)
    assert result_json.get("status") == "success", f"Expected status to be 'success', got '{result_json.get('status')}', error: '{result_json.get('error')}'" 




# --- auto-generated step ---
@when('I launch browser and open favorites')
def step_impl(context):
    result = call_tool_sync(context, context.session.call_tool(name="browser_launch", arguments={'caller': 'behave-automation', 'scenario': 'Add a website to favorites using the star icon'}))
    result_json = get_tool_json(result)
    assert result_json.get("status") == "success", f"Expected status to be 'success', got '{result_json.get('status')}', error: '{result_json.get('error')}'" 

    result = call_tool_sync(context, context.session.call_tool(name="native_button_click", arguments={'caller': 'behave-automation', 'name': 'Favorites', 'scenario': 'Add a website to favorites using the star icon'}))
    result_json = get_tool_json(result)
    assert result_json.get("status") == "success", f"Expected status to be 'success', got '{result_json.get('status')}', error: '{result_json.get('error')}'" 

# --- auto-generated step ---
@then('"Microsoft - .*" should appear in my favorites list')
def step_impl(context):
    result = call_tool_sync(context, context.session.call_tool(name="verify_element_exists", arguments={'caller': 'behave-automation', 'element_name': 'Microsoft - AI', 'control_type': 'TreeItem', 'timeout': 5, 'scenario': 'Add a website to favorites using the star icon'}))
    result_json = get_tool_json(result)
    assert result_json.get("status") == "success", f"Expected status to be 'success', got '{result_json.get('status')}', error: '{result_json.get('error')}'" 
