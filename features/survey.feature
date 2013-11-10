Feature: Access user questionnaire responses

  As an administrator
  So that I can improve the quality of the questions
  I want to collect individual responses to questionnaires

Background:
  Given the following user exists
  | first_name        | last_name   | email           | password  | password_confirmation |
  | John              | Smith       | john@smith.com  | 123456    | 123456                |
  And the following survey exists
  | personality_type  | user_id     | ei | tf | sn | jp |
  | "ENTP"            | 1           | 1  | 1  | -1 | -1 |
  And the user with email "john@smith.com" has personality type "ENTP"

  Scenario: 
    Given there is an admin
    When I am on the admin login page
    And I fill in "admin_user_email" with "admin@example.com"
    And I fill in "admin_user_password" with "password"
    And I press "Login"
    Then I should be on the admin page
    When I follow "Surveys"
    When I select "Any" from "User"
    And I press "Filter"
    Then I should see "No Surveys found"
    

    