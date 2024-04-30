Feature: Going back

Scenario: User goes back to the previous page

Given that I am on any page other than the Home page
When I tap on the arrow icon next to 'back'
Then I should immediatly go to the page I was previously.