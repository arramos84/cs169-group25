Feature: display result of personality type with a respective detailed description

	As a student/employee
	So that I can learn more about myself
	I want to read a detailed description of my personality type

Background:

	Given the following users exist
	| first_name              | last_name   | age	| personality_type  |
	| John		          | Smith     	| 21	|	"ENTP"	    |


Scenario: display personality type based on test results 
	Given I am on the test page
	Then I should see "Hey John"
	Then I should see "Your type is ENTP"
	Then I should see "5 steps to be a better leader"
	
