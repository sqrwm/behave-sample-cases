Feature: Microsoft Edge Examples
  As a Microsoft Edge user
  
 Scenario: Search in Bing
    Given Edge is launched
    When I navigate to "https://www.bing.com"
    And I wait until the search box is visible
    And I enter "Microsoft Edge" in the search box
    And I press "Enter" on my keyboard
    Then search results containing "Microsoft Edge" should be displayed

Scenario: Download PDF file
    Given Edge is launched
    When I navigate to "https://getsamplefiles.com/download/pdf/sample-1.pdf"
    Then the Downloads pane should appear
    When I navigate to "edge://downloads"
    Then "sample-1.pdf" should appear in download list
    
Scenario: Add a website to favorites using keyboard shortcut
    When I navigate to "https://www.bing.com"
    And I press "Ctrl+D" on my keyboard
    And I click the "Done" button in the favorites dialog
    Then "Bing" should appear in my favorites list
