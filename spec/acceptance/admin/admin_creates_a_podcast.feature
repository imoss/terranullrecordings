@javascript
Feature: Visitor creates a pocast

  Scenario:
    Given an admin
    And that admin is signed in
    And I am on the pocast admin index page
    And I click "Create New"
    And I fill in "Title" with "NullCast"
    And I fill in "Artist" with "Some Artist"
    And I fill in "Tracklist" with "a bunch of songs"
    And I fill in "Thumbnail src" with "/assets/test.png"
    And I press "Create Podcast"
    Then I should see "NULLCAST"
    And I should see "SOME ARTIST"
    And I should see an image with path "/assets/test.png"
    When I click "+ Show Tracklist"
    Then I should see "a bunch of songs"
