@javascript
Feature: Visitor creates a news item

  Scenario:
    Given an admin
    And that admin is signed in
    And I am on the news items admin index page
    And I click "Create New"
    And I fill in "Title" with "Some News"
    And I fill in "Content" with "Its All Good"
    And I fill in "Date text" with "Jan 1 2014"
    And I fill in "Featured image" with "/assets/test.png"
    And I press "Create News item"
    Then I should see "SOME NEWS"
    And I should see "Its All Good"
    And I should see "JAN 1 2014"
    And I should see an image with path "/assets/test.png"
