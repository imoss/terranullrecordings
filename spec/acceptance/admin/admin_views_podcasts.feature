Feature: Admin views podcasts

  Scenario: Admin is authenticated
    Given an admin
    And the following podcast:
      | title | NullCast001 |
    And that admin is signed in
    When I am on the pocast admin index page
    Then I should see "NullCast001"
    And I should see "Edit"
    And I should see "Delete"

  Scenario: Admin is not authenticated
    When I am on the pocast admin index page
    Then I should not see "a news story"
    And I should not see "Edit"
    And I should not see "Delete"
