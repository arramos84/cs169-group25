Feature: test to identify personality type
	As a student or employee
	So that I can learn more about myself
	I want to take a personality test

Background: I am on the survey page
	When I am on the sign up page
  And I fill in "user_first_name" with "John"
  And I fill in "user_last_name" with "Johnson"
  And I fill in "user_email" with "john@johnson.com"
  And I fill in "user_password" with "12345"
  And I fill in "user_password_confirmation" with "12345"
  And I press "Submit"
  Then I should be on the survey page
	
	Scenario: submit the test
		When I answer a question
		And I press "Submit"
		Then I should be on the home login page
		And I should see "Your personality type is:"
    And I should see "ESTJ"
	
	
	
	
	
	
	
	
		
