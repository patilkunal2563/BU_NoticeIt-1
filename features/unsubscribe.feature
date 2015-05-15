Feature: UnSubscribe Notice
  In order to unsubscribe to a Notice from BUNoticeIT noticeboard
  A User
  Should click unsubscribe link in my notice page

  Scenario: Successful Unsubscribing a Notice
    Given a logged in user
    And I go to the home page
    And I click "Add Notice"
    Given notice categories
    And I go to the add notice page
    And I fill in "product_name" with "Testing Notices"
    And I fill in "product_description" with "Just tested this with cucumber"
    And I fill in "product_short_description" with "Just test"
    And I choose Category as Notices
    And I press "Add Notice"
    Then I go to your notices page
    And I click "Home"
    And I click "Logout"
    Then I should see "Not a member yet"
    Given a valid user
    Given a valid user
    And I go to the login page
    And I click "Not a member yet?"
    And I go to the register page
    And I fill in "user_first_name" with "kunal"
    And I fill in "user_last_name" with "patil"
    And I fill in "user_email_address" with "kpatil2@binghamton.edu"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Create User"
    Then I go to the home page
    Given a valid user
    And I go to the login page
    And I fill in the following:
      |email_address|kpatil2@binghamton.edu|
      |password|password|
    And I press "Login"
    Then I go to the home page
    Then I should see "Subscribe"
    And I click "Subscribe"
    Then I should see "you have subscribed to 1 notice(s)"
    Then I click "View Subscribed Notices"
    Then I should see "Your Subscribed Notices"
    Then I click "Unsubscribe"
    Then I should see "You are no longer subscribed to any notices"
