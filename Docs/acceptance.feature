Feature: Create account and Profile

As a User without register
I want to create an account 
So that I can be registered in the platform

Scenario: User without register creates an account and profile
    Given that I am on the registration page
    When I fill in the registration form with valid information
    And I submit the registration form
    Then I should be redirected to the profile setup page
    And I should see a message confirming my registration


Feature: Browse and search devices

As a User without register 
I want to search ads 
So that I can find ads related to a specific key word

Scenario: User without register searches for a specific devices
    Given that I select the browse page
    When I write the specific key word on the search bar
    And click on 'search'
    Then the browse page should be entirely filled with devices related to the key word


Feature: Post and Manage Ads

As an Admin
I need to be able to delete ilegal ads 
So that it can be removed from the plataform

Scenario: Admin deletes inappropriate ad
    Given that I am on the browse page
    And I see an inappropriate ad
    When I select 'delete ad'
    Then the ad should disappear from mine and everyone's browse page


Feature: Messaging in a safer way

As a User 
I want to use the chat to talk with the person who publish an ad 
So I can send they a mensage

Scenario: User messages another User
    Given that I open the chat
    When I type anyhting and click on 'send'
    Then the other user should receive a notification
    And what I wrote should appear on their chat as well


Feature: Report Inappropriate Content

As a User 
I want to report inappropriate content in ads 
So that the Admin can review them

Scenario: User reports inappropriate ad
    Given that I am on the browse page 
    And I see an inappropriate ad
    When I click on 'report'
    And write the reason for the report
    Then I should receive a message saying 'Ad reported successfully, thank you'
    And an Admin should be notified about this ad