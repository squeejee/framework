Feature: Account Update

  In order to display my most accurate user information
  As a user
  I should be able to edit my account
  
  Background:
    Given I am signed up and signed in as "email@person.com/password"
  
  Scenario: User can visit the page to edit their account
    When I go to the account page
    And I follow "edit your account"
    Then I should see "Edit your Account"
    And I should be on the account edit page
  
  Scenario: User cannot update their account with invalid data
    When I go to the account edit page
    And I fill in "password" with "passw0rd"
    And I press "Update"
    Then I should see error messages
    
  Scenario: User can update their account with valid data
    When I go to the account edit page
    And I fill in the following:
      | Password                 | passw0rd |
      | Password confirmation    | passw0rd |
      | Current Password         | password |
    And I press "Update"
    Then I should see "You updated your account successfully"