Feature: As a user
  In order to access the application
  I need to register an account

  Scenario: Register new user with invalid password and password confirmation not matching
    When I visit "landing" page
    And I click "Sign up" button
    Then I should be on "Sign up" page
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "abc123"
    And I click "Create" button
    Then I should see "Password confirmation doesn't match Password"
    And I should see "Password is too short (minimum is 8 characters)"
    And I should see "Name can't be blank"

  Scenario: Register new user
    When I visit "landing" page
    And I click "Sign up" button
    Then I should be on "Sign up" page
    When I fill in "Name" with "John"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "abcde1234"
    And I fill in "Password confirmation" with "abcde1234"
    And I click "Create" button
    Then I should see "Welcome! You have signed up successfully."
