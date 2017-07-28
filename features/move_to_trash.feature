Feature: As a user
  In order to delete a message
  I should be able to move the message to trash

  Background:
    Given the user "bob" exist
    And the user "lisa" exist
    And I am logged in as "bob"
    And I visit "landing" page
    And I click "Inbox" button
    And I click "Compose" button
    And I select "lisa" from the "Recipient"
    And I fill in "Subject" with "Hello"
    And I fill in "Body" with "good"
    And I click "Send Message" button
    And I visit "landing" page
    And I click "Logout" button


  Scenario: Move a message to trash
    Given "Lisa" should have "1" messages
    When I am logged in as "lisa"
    And I visit "landing" page
    And I click "Inbox" button
    And I click "View" button
    And I click "Move to trash" button
    Then "Lisa" should have "0" messages
