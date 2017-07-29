Feature: User login
  As a user
  In order to access the app when I already have an account
  I should be able to login

Background:
  Given the user "Bob" exist

Scenario: User Login
  When I visit "landing" page
  And I click "Login" button
  And I fill in "Email" with "bob@example.com"
  And I fill in "Password" with "abcde123"
  And I click "Log in" button
  Then I should see "Signed in successfully."

Scenario: User Login with invalid password
  When I visit "landing" page
  And I click "Login" button
  And I fill in "Email" with "bob@bob.com"
  And I fill in "Password" with "bob1234S"
  And I click "Log in" button
  Then I should see "Invalid Email or password."
