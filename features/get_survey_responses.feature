Feature: get user survey responses
 
  As a researcher
  So that I can improve the quality of the questions and perform data analytics
  I want to collect individual user questionnaire responses 
 
Background: surveys in database
  Given all the profiles exist
  Given I am on the signup page
  When I sign up as "Mikey"
  Then I should see "If you already know your type"
  And I should see "answer the following questions"  
 
Scenario: take a survey redux
  And I answer a majority of the questions
  And I press "Submit"
  Then the survey for "Mikey" should have recorded the responses  
  
Scenario: check proper survey response recording
  And I answer a majority of the questions
  And I press "Submit"
  Then the survey for "Mikey" should have the response for JP-10 as 1

Scenario: Don't fill out the survey
  And I answer a few of the questions
  And I press "Submit"
  Then I should see "Please complete the majority of the survey"
  