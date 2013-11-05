Feature: display result of personality type with a respective detailed description

	As a student/employee
	So that I can learn more about myself
	I want to read a detailed description of my personality type

Background:

	Given the following user exist
	| first_name        | last_name   | email           | password  | password_confirmation |
	| John		          | Smith     	| john@smith.com  | 123456    | 123456                |
  And the following survey exist
  | personality_type  | user_id     | ei | ft | ns | jp |
	| "ENTP"	          | 1           | 1  | 1  | -1 | -1 |
  And the user with email "john@smith.com" has personality type "ENTP"

  Scenario: display personality type based on test results 
    Given that there is a user with the following email: "john@johnson.com"
    Given all the profiles exist
    Given I go to the login page
    And I fill in "session_email" with "john@johnson.com"
    And I fill in "session_password" with "12345"
    And I press "Submit"	  
    Then I should be on the home login page
	  And I should see "Welcome John"
	  And I should see "Your personality type is:"
    And I should see "ENTP"

	
