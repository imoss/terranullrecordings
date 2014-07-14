@javascript
Feature: Visitor views releases

  Scenario:
    Given the following releases:
      | title   | cover_thumbnail_src          |
      | This EP | /assets/some_image.png       |
      | That EP | /assets/some_other_image.png |
    And I am on the releases page
    Then I should see the image "/assets/some_image.png" which links to "#/releases/this-ep"
    And I should see the image "/assets/some_other_image.png" which links to "#/releases/that-ep"
