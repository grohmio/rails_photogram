Feature: Home page

  Scenario: Viewing application's home page
    When I am on the homepage
    Then I should redirected to "/users/sign_in"
	Then I should see the "You need to sign in or sign up before continuing." message


