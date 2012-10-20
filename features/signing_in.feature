  Feature: user can create accounts

    As a student
    So that I can track my progress
    I want to be able to log back in

  Scenario: logging in
    When I go to the login page
    And I fill in "email" with "john@johnson.com"
    And I fill in "password" with "12345"
    And I fill in "Password Confirmation" with "12345"
    And I press "login"
    Then I should be on the user page

  Scenario: logging in (sad path)
    When I go to the login page
    And I press "login"
    Then I should see "Incorrect user name"

  Scenario: creating a new account
    When I am on the sign in page
    And I fill in "First Name" with "John"
    And I fill in "Last Name" with "Johnson"
    And I fill in "Email" with "john@johnson.com"
    And I fill in "Password" with "12345"
    And I fill in "Password Confirmation" with "12345"
    And I press "Sign Up"
    Then I should be on the user page

  Scenario: creating a new account (sad path)
    Given that there is a user with the following email: john@johnson.com
    And I fill in "First Name" with "John"
    And I fill in "Last Name" with "Johnson"
    And I fill in "Email" with "john@johnson.com"
    And I fill in "Password" with "12345"
    And I fill in "Password Confirmation" with "12345"
    And I press "Sign Up"
    Then I should see "Email already in use"

  Scenario: incorrect password confirmation
    When I am on the sign in page
    And I fill in "First Name" with "John"
    And I fill in "Last Name" with "Johnson"
    And I fill in "Email" with "john@johnson.com"
    And I fill in "Password" with "12345"
    And I fill in "Password Confirmation" with "23456"
    And I press "Sign Up"
    Then I should see "Passwords do not match"

  
    
    