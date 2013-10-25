Feature: get user survey responses
 
  As a researcher
  So that I can improve the quality of the questions and perform data analytics
  I want to collect individual user questionnaire responses 
 
Background: surveys in database
 
Scenario: take a survey
  When I go to the survey page
  And  I press a bunch of buttons
  And  I press submit
  Then the survey should have recorded the responses
