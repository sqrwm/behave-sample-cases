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
    Then I should see web content containing "mcp server"
    # Configure your Azure GPT deployment to enable support analyze screenshot
    # Reffer to https://microsoft.sharepoint.com/:fl:/g/contentstorage/CSP_e5661835-29b8-4573-8fa3-56ed8a5a8ade/EU3yqUq6_JdDt5rviwG8qYEBycgUa4W5xm-99QWOabUq-A?e=dUF0cg&nav=cz0lMkZjb250ZW50c3RvcmFnZSUyRkNTUF9lNTY2MTgzNS0yOWI4LTQ1NzMtOGZhMy01NmVkOGE1YThhZGUmZD1iJTIxTlJobTViZ3BjMFdQbzFidGlscUszbm5KMGd0eHVOZE5qbXBvQ1N2bXpGeS1UajRjX1hnZlM1cUVsUF9nMk1jWCZmPTAxUEdSTldCQ042S1VVVk9YNFM1QjNQR1hQUk1BM1pLTUImYz0lMkYmYT1Mb29wQXBwJnA9JTQwZmx1aWR4JTJGbG9vcC1wYWdlLWNvbnRhaW5lciZ4PSU3QiUyMnclMjIlM0ElMjJUMFJUVUh4dGFXTnliM052Wm5RdWMyaGhjbVZ3YjJsdWRDNWpiMjE4WWlGT1VtaHROV0puY0dNd1YxQnZNV0owYVd4eFN6TnVia293WjNSNGRVNWtUbXB0Y0c5RFUzWnRla1o1TFZScU5HTmZXR2RtVXpWeFJXeFFYMmN5VFdOWWZEQXhVRWRTVGxkQ1FVZFBTMWRCVUVGQlRsUlNRVXRKTmxaVk5qUkRTRGRhU1VjJTNEJTIyJTJDJTIyaSUyMiUzQSUyMmRhZWM5ZDc1LWEwNTEtNDAwOS1hODI3LTdhOTM0NzNmYTYzYyUyMiU3RA%3D%3D
    # Then Analyze the screenshot to verify search result is MCP related and search box is on the top of the webpage

  Scenario: Download PDF file
    Given Edge is launched
    When I navigate to "https://getsamplefiles.com/download/pdf/sample-1.pdf"
    Then the Downloads pane should appear
    When I navigate to "edge://downloads"
    Then "sample-1.pdf" should appear in download list # Known issue: Bug 57974879 - Downloaded files should display their original names instead of random strings
    
