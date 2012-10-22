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

  Scenario: display personality type based on test results 
    Given I go to the login page
    And I fill in "session_email" with "john@smith.com"
    And I fill in "session_password" with "123456"
    And I press "Submit"	  
    Then I should be on the home login page
	  And I should see "Welcome John"
	  And I should see "Your personality type is:"
    And I should see "ENTP"
	
