Feature: As a user
  In order to delete a message
  I should be able to move the message to trash

  Background:
    Given the user "Bob" exist
    And the user "Lisa" exist
    And "Bob" send a mail to "Lisa"
    And I am logged in as "Lisa"


  Scenario: Move a message to trash
    Given "Lisa" should have "1" message
    When I visit "landing" page
    And I click "Inbox" button
    And I click "View" button
    And I click "Move to trash" button
    And I visit "trash" page
    Then "Lisa" should have "0" messages
    And I should see "Message to delete"
