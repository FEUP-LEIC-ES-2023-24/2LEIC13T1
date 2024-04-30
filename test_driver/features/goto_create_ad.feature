Feature: Go to create new ad page

    Scenario: Change to the create new ad paage
        Given I am in the Home Page
        And I tap the "createAd" button
        Then I expect the text "Create New Ad" to be present