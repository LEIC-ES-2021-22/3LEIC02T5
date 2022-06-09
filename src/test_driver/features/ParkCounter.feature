Feature: Park Counter
  The counter should be incremented when a car enters the Park.

  Scenario: Counter increases when a car enters the park.
    Given I expect the "" to be "0"
    When I tap the "key_Thumbs_up" button 10 times
    Then I expect "progress" to be "10"
