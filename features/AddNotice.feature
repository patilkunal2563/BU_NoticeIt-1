Feature: Add Notice
    In order to add a Notice to BUNoticeIT noticeboard
    A User
    Should enter go to Add Notice form and complete form with valid data and submit

    Scenario: Successful adding of basic Notice 
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
        Then I should see "Your Notices"

    Scenario: Successful adding of Event 
        Given a logged in user
        And I go to the home page 
        And I click "Add Notice"
        Given notice categories
        And I go to the add notice page 
        And I fill in the following:
        |product_name|semester end party|
        |product_description|open party at 63 oak street for all graduate students|
        |product_short_description|sem party|
        And I choose Category as Event
        And I press "Add Notice"
        Then I go to your notices page
        Then I should see "Your Notices"

    Scenario: Successful adding of BuySell
        Given a logged in user
        And I go to the home page 
        And I click "Add Notice"
        Given notice categories
        And I go to the add notice page
        And I fill in the following:
        |product_name|Toyota Corolla for sale|
        |product_description|2010 model Toyota Corolla for sale in mint condition costing 11000|
        |product_short_description|car for sale|
        |product_price|300|
        And I choose Category as BuySell
        And I press "Add Notice"
        Then I go to your notices page
        Then I should see "Your Notices"

    Scenario: Cancel adding of Notice
        Given a logged in user
        And I go to the home page 
        And I click "Add Notice" 
        And I go to the add notice page 
        And I click "Cancel"
        Then I go to your notices page

