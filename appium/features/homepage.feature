Feature: As a wikipedia app user, I'd like see content on the home screen
  So that I can view latest cool features


  Scenario: User can select In the News content
    Given I have launched the Wikipedia app
    And I am on home screen
    When I select on In the News content
    Then I should see relevant content

  Scenario: User can navigate back to home screen
    Given I have launched the Wikipedia app
    And I am on home screen
    And I select on In the News content
    When I press Back
    Then I should home screen

  Scenario: User can hide In the News card
    Given I have launched the Wikipedia app
    And I am on home screen
    When I hide the In the News widget
    Then I should I should not see the widget

  #Scenario: User can slide through content
  #  When I swipe thru the carousel
  #ß  Then I should see more content

