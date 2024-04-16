Feature: Fill the search box

    Scenario: Type something in search box
        Given I am in the Home Page
        And I tap the "SearchContainer" container
        And I fill the "searchfield" textfield with "Smartphone"
        Then I expect the text "Smartphone" to be present