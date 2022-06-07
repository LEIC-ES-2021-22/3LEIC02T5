Feature: Count up
  The counter should be incremented when the thumbs up button is pressed.

  Scenario: Counter increases when the thumbs up button is pressed
    Given I expect the "count_up" to be "0"
    When I tap the thumbs up button 10 times
    Then I expect the "count_up" to be "10"