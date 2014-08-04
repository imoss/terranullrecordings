Feature: Admin views news items

  Scenario: Admin is authenticated
    Given an admin
    And the following news item:
      | title | a news story |
    And that admin is signed in
    When I am on the news items admin index page
    Then I should see "a news story"
    And I should see "Edit"
    And I should see "Delete"

  Scenario: Admin is not authenticated
    When I am on the news items admin index page
    Then I should not see "a news story"
    And I should not see "Edit"
    And I should not see "Delete"
