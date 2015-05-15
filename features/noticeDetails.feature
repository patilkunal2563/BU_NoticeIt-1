Feature: Notice Details
  In order to view details of a Notice from BUNoticeIT noticeboard
  A User
  Should click Read More button for a particular notice

  Scenario: User views all details of a selected Notice
    Given a logged in user
    And I go to the home page
    And I click "Add Notice"
    Given notice categories
    And I go to the add notice page
    And I fill in "product_name" with "Notice Details Title"
    And I fill in "product_description" with "Notice Details Description"
    And I fill in "product_short_description" with "Notice Details short description"
    And I choose Category as Notices
    And I press "Add Notice"
    Then I go to your notices page
    And I click "Home"
    And I should see "Read More"
    And I click "Read More"
    Then I should see "Notice Details Title"
    And I should see "Notice Details Description"
    And I should see "Notice Details short description"
    And I press "Subscribe to this Notice"
    Then I should see "you have subscribed to 1 notice(s)"