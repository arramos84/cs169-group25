Feature: Access user questionnaire responses

  As an administrator
  So that I can improve the quality of the questions
  I want to collect individual responses to questionnaires

Background:

  Given I am on the admin page
  And the following users exists
  | first_name        | last_name   | email           | password  | password_confirmation |
  | John              | Smith       | john@smith.com  | 123456    | 123456                |
  And the following survey exists
  | personality_type  | user_id     | ei | ft | ns | jp |
  | "ENTP"            | 1           | 1  | 1  | -1 | -1 |
  And the user with email "john@smith.com" has personality type "ENTP"

  Scenario: 
    Given I am on the admin page
    And I click on "Users"
    And I click on "John Smith"
    Then I should be on John Smith's survey results page

    