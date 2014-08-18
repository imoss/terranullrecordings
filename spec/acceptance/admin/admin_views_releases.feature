Feature: Admin views releases

  Scenario: Admin is authenticated
    Given an admin
    And the following release:
      | title | Release No 1 |
    And that admin is signed in
    And I am on the releases admin index page
    Then I should see "Release No 1"
    And I should see "Edit"
    And I should see "Delete"

  Scenario: Admin is not authenticated
    When I am on the releases admin index page
    Then I should not see "Release No 1"
    And I should not see "Edit"
    And I should not see "Delete"
