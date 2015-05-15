Feature: Categories of notices
  In order to list the categories of different notices
  A User
  Should click Categories link from home page and click the appropriate category

  Scenario: Successful listing simple Notices by category
    Given a logged in user
    And I go to the home page
    And I click "Add Notice"
    Given notice categories
    And I go to the add notice page
    And I fill in "product_name" with "sample notice"
    And I fill in "product_description" with "Just tested this with cucumber"
    And I fill in "product_short_description" with "Just test"
    And I choose Category as Notices
    And I press "Add Notice"
    Then I go to your notices page
    And I click "Home"
    And I click "Notices"
    And I should see "sample notice"

  Scenario: Successful listing of events
    Given a logged in user
    And I go to the home page
    And I click "Add Notice"
    Given notice categories
    And I go to the add notice page
    And I fill in "product_name" with "sample event"
    And I fill in "product_description" with "Just tested this with cucumber"
    And I fill in "product_short_description" with "Just test"
    And I choose Category as Event
    And I press "Add Notice"
    Then I go to your notices page
    And I click "Home"
    And I click "Event"
    And I should see "sample event"

  Scenario: Successful listing notices by BuySell Category
    Given a logged in user
    And I go to the home page
    And I click "Add Notice"
    Given notice categories
    And I go to the add notice page
    And I fill in "product_name" with "sample buysell"
    And I fill in "product_description" with "Just tested this with cucumber"
    And I fill in "product_short_description" with "Just test"
    And I choose Category as BuySell
    And I press "Add Notice"
    Then I go to your notices page
    And I click "Home"
    And I click "BuySell"
    And I should see "sample buysell"