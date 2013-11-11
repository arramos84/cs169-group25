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