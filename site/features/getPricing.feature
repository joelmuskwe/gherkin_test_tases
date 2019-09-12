@site @newUser
Feature: Site - Get Pricing

	Background:
		Given I am a new user
		And I am on "/"
		When I press "Get Price" from "Navigation"
		Then I should be on "/get-storage-quote"

		@getPricing
		Scenario: I want to submit a lead with valid information via Get Pricing
			When I submit <myInformation> on lead from
			And I click on "Get Started" button
			Then I should be on "/book/storage"

			Examples:
			| myInformation |
			|               |
