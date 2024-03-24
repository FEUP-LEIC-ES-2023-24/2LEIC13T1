Feature: Create account and Profile

User Story:
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

User Story:
As a User without register 
I want to search ads 
So that I can find ads related to a specific key word

Scenario: User without register searches for a specific devices
    Given that I select the browse page
    When I write the specific key word on the search bar
    And click on 'search'
    Then the browse page should be entirely filled with devices related to the key word


Feature: Post and Manage Ads

User Story:
As an Admin
I need to be able to delete ilegal ads 
So that it can be removed from the plataform

Scenario: Admin deletes inappropriate ad
    Given that I am on the browse page
    And I see an inappropriate ad
    When I select 'delete ad'
    Then the ad should disappear from mine and everyone's browse page

User Story:
As a User
I want to create a sales ad
So that my add can be visible to other users

Scenario: User creates a sales ad
    Given that I am on the 'post an add' page
    And I type in all the details about my ad
    When I click on 'post'
    Then my ad should be visible to everyone on the browse page
    And I should receive a message confirming my ad was posted successfully

User Stories:
As a User
I need to edit a sales ad
So that I can change the price of a product

As a User
I need to edit a sales ad
So that I can change the description of a product

Scenario: User edits a sales ad
    Given that I am on the 'edit ad' page
    And I change the any information about my ad
    When I click on 'save'
    Then my ad should be updated on the browse page
    And I should receive a message confirming my ad was updated successfully

User Story:
As a User
I need to delete a sales ad
So that it can be removed from the plataform

Scenario: User deletes a sales ad
    Given that I am on the browse page
    And I see an ad of mine that I want to delete
    When I click on 'delete'
    Then the ad should disappear from mine and everyone's browse page
    And I should receive a message confirming my ad was deleted successfully

Feature: Messaging in a safer way

User Story:
As a User 
I want to use the chat to talk with the person who publish an ad 
So I can send they a mensage

Scenario: User messages another User
    Given that I open the chat
    When I type anyhting and click on 'send'
    Then the other user should receive a notification
    And what I wrote should appear on their chat as well


Feature: Report Inappropriate Content

User Story:
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