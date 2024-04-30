Feature: Go to Edit Profile Page

  Scenario: user checks the Edit Profile page
    Given I am logged in
    And I am in the ProfileMenu page
    And I tap the "Edit Profile" option
    When I tap on it
    Then I should be directed to Edit Profile Page