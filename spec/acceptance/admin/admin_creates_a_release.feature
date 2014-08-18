@javascript
Feature: Admin creates a release

  Scenario:
    Given an admin
    And that admin is signed in
    And I am on the releases admin index page
    And I click "Create New"
    And I fill in "Title" with "This EP"
    And I fill in "Artist" with "That Guy"
    And I fill in "Catalog number" with "TERNUL001"
    And I fill in "Cover src" with "/assets/this-ep-cover.png"
    And I fill in "Description" with "good tunes"
    And I fill in "Juno link" with "http://www.junolink.com"
    And I fill in "Itunes link" with "http://www.ituneslink.com"
    And I fill in "Beatport link" with "http://www.beatport.com"
    And I fill in "Bandcamp link" with "http://www.bandcamp.com"
    And I fill in "Release date" with "Jan. 1, 2014"
    And I press "Create Release"
    Then I should see "THIS EP"
    And I should see "THAT GUY"
    And I should see "TERNUL001"
    And I should see an image with path "/assets/this-ep-cover.png"
    And I should see "GOOD TUNES"
    And I should see a link to "http://www.junolink.com"
    And I should see a link to "http://www.ituneslink.com"
    And I should see a link to "http://www.beatport.com"
    And I should see a link to "http://www.bandcamp.com"
    And I should see "JAN. 1, 2014"
