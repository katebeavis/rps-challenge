Feature: Starting the game
  In order to play Rock Paper Scissors
  As a maker
  I want to start a new game

 Scenario: Registering
    Given I am on the homepage
    And I fill in "name" with "kate"
    When I click on "submit"
    Then I should see "Welcome"

