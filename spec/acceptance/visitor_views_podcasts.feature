@javascript
Feature: Visitor views podcasts

  Scenario:
    Given the following podcasts:
      | title | artist    | thumbnail_src  | tracklist  | embed_code |
      | Cast1 | Some Dude | /assets/me.png | a track yo | some_code  |
    And I am on the podcasts page
    Then I should see "CAST1"
    And I should see "SOME DUDE"
    And I should see "SOME_CODE"
    And I should see an image with path "/assets/me.png"
    And I should not see "1. a track yo"
    When I click "+ Show Tracklist"
    Then I should see "a track yo"
