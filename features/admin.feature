Feature: Admin Registration

  As an administrator
  So that I can keep track of administrative responsiblities
  I want to be able to register other administrators

Scenario: 
    Given there is an admin
    When I am on the admin login page
    And I fill in "admin_user_email" with "admin@example.com"
    And I fill in "admin_user_password" with "password"
    And I press "Login"
    Then I should be on the admin page
    When I follow "Surveys"
    When I select "Any" from "User"
    And I press "Filter"
    Then I should see "No Surveys found"


Scenario:
    Given all the profiles exist
    And the survey metrics table has been populated
    When I am on the sign up page
    And I sign up as "Molly"
    And I answer a majority of the questions
    And I press "Submit"
    Then I should be on the home login page
    When I follow "Logout"

    Given there is an admin
    When I am on the admin login page
    And I fill in "admin_user_email" with "admin@example.com"
    And I fill in "admin_user_password" with "password"
    And I press "Login"
    Then I should be on the admin page
    When I follow "Surveys"
    #When I follow "Personality Type" 
    When I follow "Created At"





