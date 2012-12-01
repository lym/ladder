Feature: View Stats
  In order to asses their performance 
  A player
  Should be able to view their match statistics

  Scenario: Player is signed in
    Given I exist in the players' database
    When I request the check status page
    Then I should see a table with all my available match statistics
