Feature: User can manually add link
 
Scenario: Add a link
  Given I am on the sales home page
  When I follow "New Link"
  Then I should be on the Add a new link page
  When I fill in "Link" with "http://www.google.com"
  And I press "Add"
  Then I should be on the sales home page
  And I should see "http://www.google.com"