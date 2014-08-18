Feature: Admin deletes a release

  Scenario:
    Given an admin
    And the following release:
      | title | Bad Release |
    And that admin is signed in
    And I am on the releases admin index page
    Then I should see "Bad Release"
    When I click "Delete"
    Then I should not see "Bad Release"
