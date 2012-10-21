  Feature: user can create accounts

    As a student
    So that I can track my progress
    I want to be able to log back in

  Scenario: logging in
    Given that there is a user with the following email: "john@johnson.com"
    When I go to the login page
    And I fill in "session_email" with "john@johnson.com"
    And I fill in "session_password" with "12345"
    And I press "Submit"
    Then I should be on the home login page

  Scenario: logging in (sad path)
    When I go to the login page
    And I press "Submit"
    Then I should see "Invalid email and/or password! Please try again!"

  Scenario: creating a new account
    When I am on the sign up page
    And I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Johnson"
    And I fill in "user_email" with "john@johnson.com"
    And I fill in "user_password" with "12345"
    And I fill in "user_password_confirmation" with "12345"
    And I press "Submit"
    Then I should be on the survey page

  Scenario: creating a new account (sad path)
    Given that there is a user with the following email: "john@johnson.com"
    When I am on the sign up page
    And I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Johnson"
    And I fill in "user_email" with "john@johnson.com"
    And I fill in "user_password" with "12345"
    And I fill in "user_password_confirmation" with "12345"
    And I press "Submit"
    Then I should be on the sign up page

  Scenario: incorrect password confirmation
    When I am on the sign up page
    And I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Johnson"
    And I fill in "user_email" with "john@johnson.com"
    And I fill in "user_password" with "12345"
    And I fill in "user_password_confirmation" with "23456"
    And I press "Submit"
    Then I should be on the sign up page

  
    
    