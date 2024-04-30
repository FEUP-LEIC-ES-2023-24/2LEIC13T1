Feature: View ProfileMenu Page

  Scenario: user checks the ProfileMenu page
    Given I am logged in
    And I tap the "Profile" icon option NavBar
    When I tap on it
    Then I should be directed to ProfileMenu Page