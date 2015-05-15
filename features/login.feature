Feature: Login
    In order to login into the web application
    A User
    Should enter email_address and password
 
    Scenario: Incorrect password 
        Given a valid user
        And I go to the login page 
        And I fill in the following:
        |email_address|anup@patil.se|
        |Password|wrongpassword|
        And I press "Login"
        Then I go to the login page

    Scenario: Invalid user
        When I go to the login page 
        And I fill in the following:
        |email_address|some@email.se|
        |Password|somepassword|
        And I press "Login"
        Then I go to the login page

    Scenario: Successful Login 
        Given a valid user
        And I go to the login page 
        And I fill in the following:
        |email_address|anup@patil.se|
        |password|password|
        And I press "Login"
        Then I go to the home page

    Scenario: Successful Logout
        Given a logged in user
        And I go to the home page
        And I click "Logout"
        Then I go to the login page

