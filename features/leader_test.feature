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
	
	Scenario: submit the test (sad path)
		Given all the profiles exist
		When I answer a question
		And I press "Submit"
		Then I should be on the survey page
		And I should see "Please complete the majority of the survey to generate an accurate personality match for you!"

  Scenario: submit a test
    Given all the profiles exist
    Given I answer a majority of the questions
    And I press "Submit"
    Then I should be on the home login page


  Scenario: type in personality type
    Given all the profiles exist
    When I fill in "type_type" with "ENTP"
    And I press "Enter"
    Then I should be on the home login page
    And I should see "Your personality type is:"
    And I should see "ENTP"

  Scenario: type in personality type again
   Given all the profiles exist
   When I fill in "type_type" with "ISFJ"
   And I press "Enter"
   Then I should be on the home login page
   And I should see "Your personality type is:"
   And I should see "ISFJ"
  
  Scenario: type in personality type (sad path)
    Given all the profiles exist
    When I fill in "type_type" with "hello world"
    And I press "Enter"
    Then I should be on the survey page
    And I should see "That is not a correct personality type"
	
	
	
	
	
	
	
	
		
