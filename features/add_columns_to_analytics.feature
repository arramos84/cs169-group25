Feature: Add columns to analytics

As a researcher
So that I can clearly see the way that question accuracy is obtained for each question
I want to see the total number answered, total positive hits for the given type
letter, and total negative hits against the opposite type letter

 

Scenario 1: Look for total questions answered
	Given I have seeded the development database
	When I am signed in as an admin
	And I am on the Survey Metrics page
	Then I should see a column for total questions answered

Scenario 2: Look for questions answered with type
	Given I have seeded the development database
	When I am signed in as an admin
	And I am on the Survey Metrics page
	Then I should see a column for total questions answered with type letter

Scenario 3: Look for questions answered against type (sad path)
	Given I have seeded the development database
	When I am signed in as an admin
	And I am on the Survey Metrics page
	Then I should see a column for total questions answered against type letter

Scenario 4: Database not yet seeded (sad path)
	When I am signed in as an admin
	And I am on the Survey Metrics page
	Then I should not see any metrics