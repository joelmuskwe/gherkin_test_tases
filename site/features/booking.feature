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

Feature: Site - Booking Flow for Existing Users

	Background:
		Given I am an existing user
		And I am logged in to my account

		Scenario: I want to schedule a pickup appointment to store more Stuff
			When I select "Store More Stuff"
			And I select my plan
			And I provide how many bins I need
			And I select Make Space services
			And I click on Continue
			And I provide my address
			And I provide an appointment address and time
			And I click on "Continue to shipping" button
			And I provide delivery information for my Make Space bins
			And I continue to review
			Then I should see my email
			And I should see my phone number
			And I should see my delivery items
			And I should see selected appointment date and time
			And I should see storeage plan I selected
			And I should see my delivery address
			And I should see my pickup address
			And I should see my payment information
			And I should see my appointment fee
			When I confirm my appoinment
			And I click skip
			Then I should be on appointment confirmation page
			And I should see my appointment details

		Scenario: I want to schedule delivery and pickup appointment
			When I select "Deliver My Stuff"
			And I select the items I want to deliver
			And I click on "Schedule Delivery"
			And I select <pickUp> for "Do you need anything picked up?"
			And I select my plan
			And I provide how many bins I need
			And I select Make Space services
			And I click on Continue
			And I provide my address
			And I provide an appointment address and time
			And I click on "Continue to shipping" button
			And I provide delivery information for my Make Space bins
			And I continue to review
			Then I should see my email
			And I should see my phone number
			And I should see my delivery items
			And I should see selected appointment date and time
			And I should see storeage plan I selected
			And I should see my delivery address
			And I should see my pickup address
			And I should see my payment information
			And I should see my appointment fee
			When I confirm my appoinment
			And I click skip
			Then I should be on appointment confirmation page
			And I should see my appointment details
