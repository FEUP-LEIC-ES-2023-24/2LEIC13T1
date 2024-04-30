Feature: Creating a new ad

Scenario: User creates a sales ad

Given that I am on the 'Create new ad' page
And I type in the title of my ad
And its description
And its price
And I choose its category 
And I type my desired location
And i choose one or multiple photos
When I tap on 'Create ad'
Then I should receive a message saying that my ad was posted successfully.