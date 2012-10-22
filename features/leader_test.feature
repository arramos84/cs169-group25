Feature: test to identify personality type
	As a student or employee
	So that I can learn more about myself
	I want to take a personality test

Background: I am on the test page
	Given I am on the test page

	Scenario: when one or more of the test questions are not filled out
		When I don't answer all the questions
		And I press "Submit Test"
		Then I should see the error "All questions must be answered"
		And I should be on the test page
	
	Scenario: submit the test
		Given I answer all questions
		When I press "Submit Test"
		Then I should be redirected to the profile page
		And I should see "Your Personality Type is:"
	
	
	
	
	
	
	
	
		
