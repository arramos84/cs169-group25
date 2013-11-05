Feature: As a visitor
         I want to be able to test drive the website 
         I want to be able to see the 16 different Myers-Briggs types and their description

  Scenario: Navigate to Learn more about Meyers-Briggs types
    Given I am on the home page
    When I follow "Learn more about Myers-Briggs types"
    Then I should see "INTS"
    And I should see "INTJ"
    When I press "INTS"
    Then I should see "INTS"
    And I should see "a description INTS"