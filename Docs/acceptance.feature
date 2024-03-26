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

User Story:
As a User, I want to recover password so that i can reenter my account.

Scenario: User recovers password
    Given that I am on the login page
    And I click on 'forgot password'
    When I type in my email and name and click on 'send'
    Then I should receive an email with a code to reset my password
    And I should see a message saying 'Email sent successfully'

User Story:
As a User, I want to edit profile information so that i can update profile.

Scenario: User edits profile information
    Given that I am on the profile page
    And I click on 'edit profile'
    When I change any information and click on 'save information'
    Then my profile should be updated
    And I should see a message saying 'Your profile has been updated!'

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

User Story:
As a user, I want to search profiles, so that I can find users by their username.

Scenario: User searches for a specific user
    Given that I select the browse page
    When I write the specific username on the search bar
    And click on 'search'
    Then the browse page should be entirely filled with profiles related to the username

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
    Given that I am on the 'New add' page
    And I type in all the details i want about my ad
    When I click on 'create new ad'
    Then my ad should be visible to everyone on the browse page
    And I should receive a message with some tips and confirmation that my ad was posted successfully

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
So I can send they a message

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

User Story:
As a User, I want to access a chat menu so I can check all my chats in one single place.

Scenario: User accesses chat menu
    Given that I am on my profile page
    And I click on 'chats'
    Then I should be redirected to the chat menu page
    And I should see all my chats in one single place

User Story:
As a user, I want to check the profile of the seller when visiting a ad, so I can see the seller's contact information

Scenario: User checks the profile of the seller
    Given that I am on the browse page
    When I click on a specific ad
    And I click on the seller's name
    Then I should see the seller's profile information


User Story:
As a User, I want to access the FAQ Section so that I can check some info.

Scenario: User accesses FAQ Section
    Given that I am on the Profile page
    When I click on 'FAQ'
    I should be redirected to the FAQ Section
    And I should see all the information I need