Feature: Ability Network with friends on Facebook

  As a Facebook User
  So that I can share my experiences on LEADU
  I want to be able to inivite friends to join LEADU and see what their types are

  Background:
    Given I am a valid user
    And I am on the root page

  @omniauth_test
  Scenario: No friends (sad path)
    When I login with provider "Facebook"
    Then I should be on the survey page
    And I should see "No friends to display"

  @omniauth_test
  Scenario: See friends list
  	When I login with provider "Facebook"
    Then I should be on the survey page
    And I should see "Jeremy Rios"
    And I should see "Molly Nicholas"

  @omniauth_test
  Scenario: See friends list but can't invite (sad path)
    When I login with provider "Facebook"
    Then I should be on the survey page
    And I should see "Jeremy Rios"
    And I should see "Molly Nicholas"
    When I follow "Invite Molly"
    Then I should see "Facebook User Restricts Invitations!"

  @omniauth_test
  Scenario: See friends list but can't invite (sad path)
    When I login with provider "Facebook"
    Then I should be on the survey page
    And I should see "Jeremy Rios"
    And I should see "Molly Nicholas"
    When I follow "Invite Jeremy"
    Then I should be on the survey/home page
    And I should see "Jeremy has been successfully invited to LEADU!"



