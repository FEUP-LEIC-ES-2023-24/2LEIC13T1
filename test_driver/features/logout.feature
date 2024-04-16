Feature: Logout 

  Scenario: user logout their account
    Given I am logged in
    And I am in the ProfileMenu page
    And I tap the "Logout" option
    When I tap on it
    Then I should be logout from my account