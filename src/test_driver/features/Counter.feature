Feature: Counter
  The counter should be incremented/decremented when the thumbs up button is pressed.

  Scenario: Counter increases when the thumbs up button is pressed
    Given I expect "progress" to be "0"
    When I tap the "key_Thumbs_up" button
    Then I expect "progress" to be "1"

  Scenario: Counter decreases when the thumbs up button is pressed
    Given I expect "progress" to be "0"
    When I tap the "key_Thumbs_down" button
    Then I expect "progress" to be "1"