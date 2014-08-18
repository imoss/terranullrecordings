Feature: Admin deletes a news item

  Scenario:
    Given an admin
    And the following news item:
      | title | some news item |
    And that admin is signed in
    And I am on the news items admin index page
    Then I should see "some news item"
    When I click "Delete"
    Then I should not see "some news item"
