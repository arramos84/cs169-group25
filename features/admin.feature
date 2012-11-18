Feature: have an admin panel so that an administrator can edit the database

  As an administrator
  I want to have an admin panel
  So that I can change fields and content without contacting developers

  Scenario: logging in as an admin
    Given there is an admin
    When I am on the admin login page
    And I fill in "admin_user_email" with "admin@example.com"
    And I fill in "admin_user_password" with "password"
    And I press "Login"
    Then I should be on the admin page

  Scenario: logging in as an admin (failure)
    When I am on the admin login page
    And I fill in "admin_user_email" with "john@smith.com"
    And I fill in "admin_user_password" with "12345"
    And I press "Login"
    Then I should be on the admin login page
    And I should see "Invalid email or password."

  Scenario: use the admin panel to create a new user
    Given there is an admin
    When I am on the admin login page
    And I fill in "admin_user_email" with "admin@example.com"
    And I fill in "admin_user_password" with "password"
    And I press "Login"
    Then I should be on the admin page
    When I follow "Users"
    Then I should be on the admin users page
    When I follow "New User"
    And I create a new user  
    And I should see "User was successfully created."
    When I follow "Surveys"   
    Then I should be on the admin surveys page
    When I follow "New Survey"
    And user 1 creates a new survey
    Then I should see "Survey was successfully created."
    And I should see "john@smith.com"