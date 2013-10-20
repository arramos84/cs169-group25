Feature: Ability to login to LEADU via a third party

  As a user
  So that I can take advantage of Single Sign On (SSO)
  I want to be able to login to LEADU with my profile from a third party (i.e Facebook, Google, etc..)

  Scenario: Login with Facebook
    Given I am on the home page
    And I click on "Login with Facebook"
    Then I should see a sign in screen
    And I should see a username field
    And I should see a password field
    And I login with my Facebook account
    Then I should be redirected to the LEADU home page
    And I should see "Welcome Facebook User!"

    

    
