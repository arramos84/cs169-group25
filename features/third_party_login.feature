Feature: Ability to login to LEADU via a third party

  As a user
  So that I can take advantage of Single Sign On (SSO)
  I want to be able to login to LEADU with my profile from a third party (i.e Facebook, Google, etc..)

  Scenario: Login with Facebook
    When I am on the sign up page
    And I press "Login with Facebook"
    Then I should be on the sign in screen
    And I fill in "username" with "user@example.com"
    And I fill in "password" with "password"
    And I press "login to Facebook"
    Then I should be on the LEADU home page
    And I should see "Welcome Facebook User!"

    

    
