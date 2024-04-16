Feature: Go to Chats Page

  Scenario: user checks the Chats page
    Given I am logged in
    And I am in the ProfileMenu page
    And I tap the "Chats" option
    When I tap on it
    Then I should be directed to Chats Page and view my open chats