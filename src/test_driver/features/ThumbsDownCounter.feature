Feature: Count down
  The counter should be decremented when the thumbs up button is pressed.

  Scenario: Counter decreases when the thumbs up button is pressed
    Given I expect "progress" to be "0"
    When I tap the "key_Thumbs_down" button 10 times
    Then I expect "progress" to be "10"