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


Feature: Site - Booking flow for logged-in users
	Background:
		Given I am an existent user
		And I logged in my account
		When I click on "Schedule Appointment"

		Scenario: I want to schedule Delivery Appointment
			And I select "Deliver My Stuff"
			And I select the items I want to store
			And i click on "Schedule Delivery"
			And i click on "No"
			And I provide valid "Appointmnet Adress"
			And I select Appointment Date & Time  from calendar
			And I click on "Continue to Review"
			Then I should land on "Review" page
			And I should see my Your Account email
			And I should see my phone number
			And I should see my selected delivery items Ids
			And I should see selected Appointment date/Time
			And I should see My delivery address
			And I should see last four digit of  my CC Number
			And I should see Minimum appointmnet total
			And I should see delivery item quantity
			And I should see Flat Rate delivery and service total
			And I click on "confirm your appointment" button
			Then I should land on confirmed appointment page and see my Appointment

		Scenario: I want to schedule Pickup Appointment 
			And I select Store More Stuff
			And I select my plan
			And I provide how many bins I need
			And I select makespace services
			And I select Make space services
			And I click on Continue button
			And I provide my Appointment Adress
			And I provide Appointment Date & Time  from calendar
			And I click on "Continue to shipping" button
			And I then I provide name , phone number and address for MakeSpace bin shipping
			And I click on Continue to Review
			Then I should see my my email adress
			And I should see my phone number
			And I should see storeage plan I selected
			And I should see my Appointment date/Time
			And I should see My Makespace bin shipping adress address
			And I should see my pickup address
			And I should see last four digit of my CC Number
			And I should see Minimum appointment total
			And I should see Appointment service details
			And I click on confirm you appointment button
			And I click on skip
			Then I should land on confirmed appointment page and see my Appointment

		Scenario: I want to schedule combo (Delivery - Pickup) appoinment
			And I select Delivery My Stuff
			And I select my itmems I wan to delivered
			And I click yes for "Do you need anything picked up?"
			And I select my plan
			And I provide makespace bin number I need
			And I answer service wuestions
			And I provide my Adress
			And I select Date/Time
			And I provide Makespace bin shipping Adress
			Then I should land on review page
			And I should see my account information
			And i sehould see delivery item information
			And i should my storage plan for pickup itmems
			And I should see Appointmnet address, date/Time
			And I should see last 4 digit of CC number
			And I should see Minimum appointmnet total
			And I should see delivery item quantity
			And I should see Flat Rate delivery and service total
			And I click on "confirm your appointment" button
			And I skip inventory item selection
			Then I should land on confirmed appointment page and see my Appointment
