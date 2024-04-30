Feature: Go to FAQ Page

  Scenario: user checks the FAQ page
    Given I am logged in
    And I am in the ProfileMenu page
    And I tap the "FAQ" option
    When I tap on it
    Then I should be directed to FAQ Page
     