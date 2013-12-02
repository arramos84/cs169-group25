  Feature: user can create accounts

    As a Leadu user
    So I may refresh my profile
    I want an Edit Profile page

  Scenario: not logged in (sad path)
    Given I am on the login page
    I should not be able to go to the Edit User Profile page

  Scenario: cannot update password because original pw is incorrect (sad path)
    Given I am logged in
    When I go to the Edit User Profile page
    And I put a wrong password into the current password field
    And I enter a new password
    Then I should be on the Edit User Profile page
    And I should see "You entered an incorrect password"

  Scenario: change password
    Given I am logged in
    When I go to the Edit User Profile page
    And I enter the correct current password
    And I enter a new password
    And I press "Update"
    Then I should be on the home page
    And I should see "Your updates have been recorded"

  Scenario: change email address
    Given I am logged in
    When I go to the Edit User Profile page
    And I enter a new email address
    And I press "Update"
    Then I should be on the home page
    And I should see "Your updates have been recorded"
    And the user email should be "deez@nuts.com"
    
  Scenario: go to the Edit Profile page
    Given I am signed in
    And I am on the home page
    When I click "Edit Profile"
    Then I should be on the Edit User Profile page
    And I should see "email"
    And I should see "current password"
    And I should see "new password"
    And I should see "Professor"
    
  Scenario: Update Personality Type Button
    Given I am signed in
    And I am on the home page
    When I click "Edit Profile"
    Then I should be on the Edit User Profile page
    And I should see "Retake Survey or Update Personality Type"
    
  Scenario: Redo Survey
    Scenario: Update Personality Type Button
    Given I am signed in
    And I am on the home page
    When I click "Edit Profile"
    Then I should be on the Edit User Profile page
    When I follow "Retake Survey of Update Personality Type"
    Then I should be on the survey page
    And my previous survey should have been deleted



  
    
    
