Feature: interaction with readers

  As a feed reader
  I want to be presented with relevant messages
  So that I am in the know on what is most important to me

  Background:
    Given I am a reader

  @dev
  Scenario: new reader interaction
    When I am a new reader
    And I access the system
    Then I am assigned a unique id

  @dev
  Scenario: known reader interaction
    When I access the system
    Then my unique id is recognized

  @dev
  Scenario: reader gets most relevant message
    When I access the system
    Then I get the most relevant message

  @dev
  Scenario: reader considers message relevant
    When I mark current message as relevant
    Then my connection to its writer is strengthened
    And a new message is shown

  @dev
  Scenario: reader considers message not relevant
    When I mark current message as not relevant
    Then my connection to its writer is weakened
    And a new message is shown
