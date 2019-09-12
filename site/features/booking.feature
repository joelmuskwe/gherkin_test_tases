@site @homepage @newUser
Feature: Site - Booking Flow

	Background:
		Given I am a new user
		And I am on "/"

		@bookingFlow
		Scenario Outline: I want to schedule an appointment through the booking flow as a new user
			When I submit my information
			Then I should be on "/book/storage"
			When I select my plan
			And I provide how many bins I need
			And I supply my booking details
			And I provide my address
			And I provide a date and time
			And I provide my shipping address
			And I create my account
			And I provide my billing information
			Then I should see my appointment total cost
			When I confirm and book my appointment
			And I provide items that are being picked up
			Then I should see a promo
			And I should be on "/"
			And I should see my appointment
