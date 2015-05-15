Feature: Subscribe Notice
  In order to subscribe to a Notice from BUNoticeIT noticeboard
  A User
  Should click subscribe button for a particular notice

  Scenario: Successful Subscribing a Notice
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
  
  Scenario: User not subscribed to any notice
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
    Then I should see "You have not subscribed to any notices."
    Then I should see "Subscribe"
