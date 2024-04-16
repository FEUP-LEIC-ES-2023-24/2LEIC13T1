Feature: Reset Password
  As a User, I want to recover password so that i can reenter my account.

Scenario: User access the 'Forgot Password' Page
  Given I am on the 'Home Page'
  When I tap on the 'iconPersonButton'
  And I tap on the 'ForgotButton'
  Then I should be on the 'Forgot Password' Page

Scenario: User enters email
  Given I am on the 'Forgot Password' page
  When I type 'test1234@gmail.com' into the 'EmailTextBox' field
  And I tap on the 'SendLinkButton'
  Then I expect the 'Email Sent!' to be printed