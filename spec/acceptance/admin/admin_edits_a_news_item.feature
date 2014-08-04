@javascript
Feature: Admin edits news item

  Scenario:
    Given the following news item:
      | title          | Some Other News   |
      | content        | Its Not Good      |
      | date_text      | Jan 2 2014        |
      | featured_image | /assets/test2.png |
    And an admin
    And that admin is signed in
    When I am on the news items admin index page
    And I click "Edit"
    And I fill in "Title" with "Some News"
    And I fill in "Content" with "Its All Good"
    And I fill in "Date text" with "Jan 1 2014"
    And I fill in "Featured image" with "/assets/test.png"
    And I press "Update News item"
    Then I should see "SOME NEWS"
    And I should see "Its All Good"
    And I should see "JAN 1 2014"
    And I should see an image with path "/assets/test.png"
