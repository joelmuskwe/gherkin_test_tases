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


Feature: Site - Booking flow for logged in user
	Background:
		Given I am an existent user
		And I logged in my account
		When I click on "Schedule Appointment"

		Scenario: I want to schedule an appoinment for delivery
			When I select "Deliver My Stuff"
			And I select desired stored items
			And i click on "Schedule Delivery"
			And i click on "No"
			And I input valid "Appointmnet Adress"
			And I select Appointment Date & Time  from calendar
			And I click on "Continue to Review"
			Then I should land on "Review" page
			And I should see my Your Account <your@Email.com>
			And I should see my <Phone Number>
			And I should see my selected delivery items
			And I should see selected Appointment date/Time
			And I should see My delivery address
			And I should see last four digit of CC Number
			And I should see Minimum appointmnet total
			And I should see delivery item quantity
			And I should see Flast Rate deliveryand I shoudl see service total
			And I click on confirm you appointment button
			Then I should land on confirmed appointment page

		Scenario: I want to schedule an pickup appoinment to store more Stuff
			When I select Store More Stuff
			And I select my plan
			And I enter MAkespace bin numbers
			And I click on continue to service
			And I select Make space services
			And I click on Continue button
			And I input valid Appointment Adress
			And I select Appointment Date & Time  from calendar
			And I click on Continue to shipping button
			And I should enter my Full Name
			And I should enter my Phone number
			And I clikc on "My mailing address is the same as my appointment address."
			Then Malining adress hsould be populated
			And i click on Continue to Review
			Then i should land on Review homepage
			And I should see my Your Account <your@Email.com>
			And I should see my <Phone Number>
			And I should see my selected delivery items
			And I should see selected Appointment date/Time
			And I should see My delivery address
			And I should see last four digit of CC Number
			And I should see Minimum appointmnet total
			And I should see delivery item quantity
			And I should see Flast Rate deliveryand I shoudl see service total
			And I click on confirm you appointment button
			Then I should land on confirmed appointment page
