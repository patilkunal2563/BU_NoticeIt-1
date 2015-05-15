Feature: Edit Notice
    In order to update a Notice from BUNoticeIT noticeboard
    A User
    Should my notices list, select a notice to edit and update

    Scenario: Successful editing of basic Notice
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
        Then I should see "Testing Notices"
        Then I click "Testing Notices"
        And I fill in "product_name" with "Edited Notice Title"
        And I fill in "product_description" with "Just edited with edit notice feature"
        And I fill in "product_short_description" with "Just short edit description test"
        And I press "Add Notice"
        Then I should see "Notice has been updated successfully"

    Scenario: Cancel editing of Notice
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
        Then I should see "Testing Notices"
        Then I click "Testing Notices"
        And I click "Cancel"
        Then I go to your notices page

    Scenario: Deleting a Notice
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
        Then I should see "Testing Notices"
        Then I click "Testing Notices"
        Then I click "Delete"
        Then I should see "Your Notices Notice has been removed successfully"