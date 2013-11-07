Feature: display result of personality type with detailed description

	As a student/employee
	So that I can learn more about myself
	I want to read a detailed description of my personality type

Scenario:
	Given all the profiles exist
    Given I am on the signup page
    When I sign up as "Molly"
    Then I should see "If you already know your type"
    And I should see "answer the following questions"

    When I fill in "entered_type" with "ESTJ"
    And I press "Enter"
    Then I should see "Welcome Molly"
    And I should see "Your personality type is: ESTJ"
    And I should see "Lorem ipsum"
