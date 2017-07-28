Feature: As a user
  In order to exit the application
  I should be able to sign out from the application

  Background:
    Given the user "Bob" exist
    And I am logged in as "Bob"

  Scenario: User Log out
    When I visit "landing" page
    And I click "Logout" button
    Then I should see "Signed out successfully."
