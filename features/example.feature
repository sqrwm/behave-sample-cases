Feature: Edge Favorites Management
 
  Scenario: add website to favorites
    Given navigate to "https://www.bing.com"
    Then click native "Favorites" button
    Then click native "Add this page to favorites" button
    Then keyboard input "{ENTER}"


# 2025-05-07 11:40:08,628 - utils.gen_code - INFO - record_calls: call_params={'args_no_name': None, 'caller': 'behave', 'name': 'Favorites', 'step': 'When I launch browser and open favorites', 'scenario': 'Add a website to favorites using the star icon', 'gen_code_id': 'f122d478-7061-4627-b030-084951729c98', 'tool_name': 'native_button_click'}
# 2025-05-07 11:41:03,455 - utils.gen_code - INFO - record_calls: call_params={'args_no_name': None, 'caller': 'behave', 'element_name': 'Microsoft - AI', 'control_type': 'TreeItem', 'timeout': 5, 'step': 'Then "Microsoft - .*" should appear in my favorites list', 'scenario': 'Add a website to favorites using the star icon', 'gen_code_id': 'f122d478-7061-4627-b030-084951729c98', 'tool_name': 'verify_element_exists'}

# ##BDD TEST CASE:
# Scenario: Add a website to favorites using the star icon
# When I launch browser and open favorites
# Then "Microsoft - .*" should appear in my favorites list

# Requirements:

# Please execute this bdd test case step by step AND generate the test code using MCP server native-mcp-server
# execute every step using mcp server tool
# do not change the step content

# 请使用 MCP server 执行以下操作，不需要解释，仅调用：
# ##BDD TEST CASE:
# Scenario: Add a website to favorites using the star icon
# When I launch browser and open favorites
# Then "Microsoft - .*" should appear in my favorites list

# Requirements:
# feature_file = "c:/Users/toyu/code/auto-mcp-demo/behave_demo/features/favorites/add_favorite.feature"

# Please execute this bdd test case step by step , generate the test code and confirm code changes using MCP server native-mcp-server
# execute every step using mcp server tool, do not generate code by yourself
# do not change the step content



  # Scenario: verify browser tool
  #   Given navigate to "https://www.bing.com"
  #   Then click native "Favorites" button
  #   Then click native "Add this page to favorites" button
  #   Then keyboard input "{ENTER}"

  # Please execute this test case using MCP server tools AND generate the corresponding test code


   # Scenario: 搜索并验证侧边栏历史记录
  #   Given 启动Edge浏览器
  #   # When 在地址栏访问"https://www.bing.com"
  #   # And 在搜索框输入"Playwright自动化测试"
  #   # And 点击搜索按钮a
  #   # # Then 点击搜索按钮
  #   # Then 搜索结果应包含"Microsoft"
  #   # When 打开侧边栏历史记录面板
    # Then 历史记录中应有'www.bing.com'条目

  # Scenario: To Perform search in baidu website
  #   Given I navigate to https://baidu.com
  #   And I enter "mcp server" in "search box"
  #   And I click "百度一下" button
  #   Then click 'Favorites' button on the toolbar
  #   Then click 'Add this page to favorites' button on the toolbar
  #   Then keyboard input "{ENTER}"
  ##please execute this test case directly using mcp server tools, and do not generate code