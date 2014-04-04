Feature: handle authentication
  In order to manage my account
  As a user
  I want to be able to authenticate
  
  Scenario: Signing up
    Given I am not signed in
    Then I should see "Sign up or sign in"
    
    When I follow "Sign up"
    And I fill in "Email" with "git@github.com"
    And I fill in "Password" with "foobar"
    And I fill in "Password confirmation" with "foobar"
    And I press "Sign up"
    Then I should be on the home page
    And I should see "signed up"
    And I should be signed in as "git@github.com"
    
  Scenario: Signing out
    Given I am signed in as "git@github.com"
    When I follow "Sign out"
    Then I should not be signed in
    
  Scenario: Signing in
    Given there is a user with username "git@github.com" and password "foobar"
    And I am on the home page
    When I follow "sign in"
    And I fill in "Email" with "git@github.com"
    And I fill in "Password" with "foobar"
    And I press "Sign in"
    Then I should be signed in as "git@github.com"
  
  Scenario: Signing up with twitter
    Given I am not signed in
    And I am on the sign up page
    Then I should see "Sign in with Twitter"
    
    When I follow "Sign in with Twitter"