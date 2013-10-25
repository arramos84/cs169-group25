Feature: get user survey responses
 
  As a researcher
  So that I can improve the quality of the questions and perform data analytics
  I want to collect individual user questionnaire responses 
 
Background: surveys in database
 
Scenario: take a survey
  Given all the profiles exist
  Given that there is a user with the following email: "mccormack@berkeley.edu"
  Given I am on the login page
  When I sign in
  And  I answer a majority of the questions
  And  I press "Submit"
  Then the survey should have recorded the responses
