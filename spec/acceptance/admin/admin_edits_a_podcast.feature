@javascript
Feature: Admin edits news item

  Scenario:
    Given the following podcasts:
      | title | artist    | thumbnail_src  | tracklist  | embed_code |
      | Cast1 | Some Dude | /assets/me.png | a track yo | some_code  |
    And an admin
    And that admin is signed in
    When I am on the pocast admin index page
    And I click "Edit"
    And I fill in "Title" with "NullCast"
    And I fill in "Artist" with "Some Artist"
    And I fill in "Tracklist" with "a bunch of songs"
    And I fill in "Thumbnail src" with "/assets/test.png"
    And I press "Update Podcast"
    Then I should see "NULLCAST"
    And I should see "SOME ARTIST"
    And I should see an image with path "/assets/test.png"
    When I click "+ Show Tracklist"
    Then I should see "a bunch of songs"
