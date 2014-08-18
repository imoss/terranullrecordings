@javascript
Feature: Visitor views release

  Scenario:
    Given the following release:
      | title          | This EP                   |
      | artist         | That Guy                  |
      | catalog_number | TERNUL001                 |
      | cover_src      | /assets/this-ep-cover.png |
      | description    | good tunes                |
      | juno_link      | http://www.junolink.com   |
      | itunes_link    | http://www.ituneslink.com |
      | beatport_link  | http://www.beatport.com   |
      | bandcamp_link  | http://www.bandcamp.com   |
      | release_date   | Jan. 1, 2014              |
    And I am on the show page for that release
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
