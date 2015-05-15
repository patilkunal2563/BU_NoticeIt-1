Feature: Register
    In order to register for BUNoticeIT
    A User
    Should enter first_name, last_name, email_address, password and password_confirmation

    Scenario: Successful Register 
        Given a valid user
        And I go to the login page 
        And I click "Not a member yet?" 
        And I go to the register page 
        And I fill in "user_first_name" with "anup"
        And I fill in "user_last_name" with "patil"
        And I fill in "user_email_address" with "anup@binghamton.edu"
        And I fill in "user_password" with "password"
        And I fill in "user_password_confirmation" with "password"
        And I press "Create User"
        Then I go to the home page

    Scenario: Unsuccessful Register - missing fields
        Given a valid user
        And I go to the login page 
        And I click "Not a member yet?" 
        And I go to the register page
        And I fill in "user_password_confirmation" with "password"
        And I press "Create User"
        Then I should see "First name can't be blank"
        Then I should see "Last name can't be blank"
        Then I should see "Password can't be blank"
        Then I should see "Email address can't be blank"

    Scenario: Successful Register
        Given a valid user
        And I go to the login page
        And I click "Not a member yet?"
        And I go to the register page
        And I fill in "user_first_name" with "anup"
        And I fill in "user_last_name" with "patil"
        And I fill in "user_email_address" with "anup@binghamton.edu"
        And I fill in "user_password" with "password"
        And I fill in "user_password_confirmation" with "mismatch_password"
        And I press "Create User"
        Then I should see "Password confirmation doesn't match Password"