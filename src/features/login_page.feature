Feature: Login page

  Scenario: Viewing application's loginheadline page
    Given there's a form named "Login"
    When I am on the loginpage
	Then I should not see the "You need to sign in or sign up before continuing." message
    Then I should see the "Log in" form
    When I press "Log in"
    Then I should see the "Invalid Email or password." message
