@site @login @existingUser
Feature: Site - Log In

	Background:
		Given I am <user>
		And I am on "/"

		@validLogin @loginOnHomepage
		Scenario Outline: I want to login by using valid credentials
			When I press "LOGIN"
			Then I should be on "/account/login"
			When I submit my <credentials>
			Then I should be on "/"
			And I should be logged in
				# We need QA accounts of various states, types and profiles
				# For example a user with no CC info, a user in Toronto
				Examples:
				| user | credentials |
				|      |             |
