Feature: Go to My Ads Page

  Scenario: user checks the My Ads page
    Given I am logged in
    And I am in the ProfileMenu page
    And I tap the "My Ads" option
    When I tap on it
    Then I should be directed to My Ads Page