Feature: Microsoft Edge Examples
  As a Microsoft Edge user

  # Note: Vertical tabs are currently not supported.
  # Known issue: [Bug 57975310: win-auto-mcp not support vertical tab](***)
  # This issue is under investigation and will be addressed in an upcoming release.

  Scenario: Add a website to favorites using keyboard shortcut
    Given Edge is launched
    When I navigate to "https://www.bing.com"
    And I press "Ctrl+D" on my keyboard
    And I click the "Done" button in the favorites dialog
    When I open favorites pane
    And open Favorites bar
    Then "Bing" should appear in my favorites list

  Scenario: serch in bing
    Given I launch Edge
    When I navigate to "https://www.bing.com"
    And I input "mcp server" in search box
    And I press enter
    Then analyze the search result screenshot is MCP related

  Scenario: Download PDF file
    Given Edge is launched
    When I navigate to "https://getsamplefiles.com/download/pdf/sample-1.pdf"
    Then the Downloads pane should appear
    When I navigate to "edge://downloads"
    Then "sample-1.pdf" should appear in download list # Known issue: Bug 57974879 - Downloaded files should display their original names instead of random strings
    
