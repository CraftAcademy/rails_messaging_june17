Feature: Inbox list
  As a user
  In order to see the messages, I have received
  I should be able visit an inbox page and view its content

  Background:
    Given the user "bob" exist
    And the user "lisa" exist

  Scenario: Reading a message
    Given I am logged in as "bob"
    And I send a mail to "lisa"
    And I visit "landing" page
    And I click "Logout" button
    Given I am logged in as "lisa"
    And I visit "landing" page
    And I click "Inbox" button
    Then I should have "1" messages
    And I click "View" button
    Then I should have "0" messages
