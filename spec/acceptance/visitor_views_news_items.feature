@javascript
Feature: Visitor Views News Items

  Scenario:
    Given the following news items:
      | title           | content          | date_text  | featured_image    |
      | Some News       | Its All Good     | Jan 1 2014 | /assets/test.png  |
      | Some Other News | Its Not All Good | Jan 2 2014 | /assets/test2.png |
    And I am on the news page
    Then I should see "SOME NEWS"
    And I should see "Its All Good"
    And I should see "JAN 1 2014"
    And I should see an image with path "/assets/test.png"
    And I should see "SOME OTHER NEWS"
    And I should see "Its Not All Good"
    And I should see "JAN 2 2014"
    And I should see an image with path "/assets/test2.png"
