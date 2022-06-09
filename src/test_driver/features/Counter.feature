Feature: Counter
  The counter should be incremented/decremented when the thumbs up button is pressed.

  Scenario: Counter increases when the thumbs up button is pressed
    Given I expect "progress" to be "0"
    When I tap the "key_Thumbs_up" button 10 times
    Then I expect "progress" to be "10"

  Scenario: Counter decreases when the thumbs up button is pressed
    Given I expect "progress" to be "0"
    When I tap the "key_Thumbs_down" button 10 times
    Then I expect "progress" to be "10"