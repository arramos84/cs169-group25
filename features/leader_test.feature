Feature: verify all questions are filled
	When I go to the test page
	And I answer zero questions
	When I press "Submit Test"
	Then I should see the error "All questions must be answered"
	And I should be on the test page
	
Feature: submit the test
	Given I am on the test page
	And I answer all questions
	When I press "Submit Test"
	I should be redirected to the profile page
	
	
