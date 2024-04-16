Feature: Adding a photo to the new ad i'm creating

Scenario: User adds a photo to the ad he they are creating

Given that I am on the 'Create new ad' page
When I tap on 'Add photo'
Then I should be able to choose between Gallery or Camera
And I should be able to choose my desired photo or take it on the spot.