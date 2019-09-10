

Feature: MakeSpace Website - Homepage

Background:
	Given I am a new user
	When I am on "/"

Scenario Outline: Homepage Links and buttons navigation verification
	And I <action> on <element> from <component>
	Then I should navigate to <expectedResult>

	Examples:
	
	
	|     <action>  	|	<element>      	         |  <component>                 | <expectedResult>
	|	click 	  	| MakeSpace Logo  img            |  header-wrapper              | /
	|	follow	        | BUSINESS STORAGE link          |  header-wrapper              | /business-storage page
	|	follow	        | FEATURES link                  |  header-wrapper              | /features/ page
	|	click 	   	| invoca Sales Number            |  header-wrapper              | "Open FaceTime?" window will pop-up on mac
	|	click 	   	| GET PRICING Button             |  header-wrapper              | /get-storage-quote/ page
        |       click           | invoca Sales Number            |  quote-form-wrapper          | "Open FaceTime?" window will pop-up on mac
	|	click 	  	| Small "Get your price" button  |  homepage-value-prop         | /get-storage-quote/ page
	|	click 	   	| Medium "Get your price" button |  homepage-value-prop         | /get-storage-quote/ page
	|	click           | invoca Sales Number            |  homepage-value-prop         | "Open FaceTime?" window will pop-up on mac
	|	follow		| "New York City" link           |  Serving Cities container    | /nyc/ page
	|	follow		| "Washington D.C" link          |  Serving Cities container    | /dc/ page
	|	follow		| "Baltimore" link               |  Serving Cities container    | /baltimore/ page
	|	follow		| "Philadelphia" link            |  Serving Cities container    | /philadelphia// page
	|	follow		| "Pittsburgh" link              |  Serving Cities container    | /pittsburgh/ page
	|	follow		| "Boston" link                  |  Serving Cities container    | /boston/ page
	|	follow		| "Chicago" link                 |  Serving Cities container    | /chicago/ page
	|	follow		| "Detroit" link                 |  Serving Cities container    | /detroit/ page
	|	follow		| "Miami" link                   |  Serving Cities container    | /miami/ page
	|	follow		| "Orlondo" link                 |  Serving Cities container    | /orlondo/ page
	|	follow		| "Tampa" link                   |  Serving Cities container    | /tampa/ page
	|	follow		| "Jacksonville" link            |  Serving Cities container    | /jacksonville/ page
	|	follow		| "Nashville" link               |  Serving Cities container    | /nashville/ page
	|	follow		| "Denver" link                  |  Serving Cities container    | /denver/ page
	|	follow		| "Los Angeles" link             |  Serving Cities container    | /los-angeles/ page
	|	follow		| "San Francisco" link           |  Serving Cities container    | /san-francisco/ page
	|	follow		| "San Diego" link               |  Serving Cities container    | /san-diego// page
	|	follow		| "Seattle" link                 |  Serving Cities container    | /seattle/ page
	|	follow		| "Dallas" link                  |  Serving Cities container    | /dallas/ page
	|	follow		| "Austin" link                  |  Serving Cities container    | /austin/ page
	|	follow		| "Houston" link                 |  Serving Cities container    | /houston/ page
	|	follow		| "San Antonio" link             |  Serving Cities container    | /san-antonio/ page
	|	follow		| "Phoenix" link                 |  Serving Cities container    | /phoenix/ page
	|	follow		| "Toronto" link                 |  Serving Cities container    | /toronto/ page
	|	click		| "Call Us" invoca Sale number	 |  footer-contact container	| "Open FaceTime?" window will pop-up on mac
	|	click 		| "Email Us"                     |  footer-contact container    | open Mail application on Mac / outlook on Windows
        |       follow          | facebook icon                  |  footer-contant container    | facebook.com/MakeSpaceCom page
	|	follow          | twitter icon                   |  footer-contant container    | twitter.com/makespace page
	|	follow          | instangram icon                |  footer-container container  | instagram.com/makespace/ page
	|	follow          | google icon                    |  footer-container continer   | plus.google.com/+Makespace page
	|	follow          | printerest icon                |  footer-container continer   | pinterest.com/GetMakeSpace/ page
	|	follow		|	"Support"                |  footer- section             | /account/login/?next=/support/ page
	|	follow		|	"About  "                |  footer- section             | /about/team/ page
	|	follow		|	"Locations"              |  footer- section             | /locations/ page
	|	follow		|	"Careers"                |  footer- section             | /about/careers/ page
	|	follow		|	"Features"               |  footer- section             | /features/ page
	|	follow		|	"Pricing"                |  footer- section             | /get-storage-quote/ page
	|	follow		|	"FAQ    "                |  footer- section             | /faq/ page
	|	follow		|	"Storage Rules"          |  footer- section             | /p/about/storage-rules/ page
	|	follow		|	"Tips"                   |  footer- section             | /p/tips/ page
	|	follow		|	"Blog"                   |  footer- section             | /blog/ page
	|	follow		|	"Terms"                  |  footer- section             | /p/legal/terms/ page
	|	follow		|	"Privacy"                |  footer- section             | /p/legal/privacy/ page




Feature: Login functionality verification
	Scenario: Existent user should sucessfully login  to their account
		Given I am a existent user
		When  I am on "/"
		And   I click on "LOGIN" on the header
		And   I navigate to "/account/login"
		And   I enter <email> on "Email Address" field
		And   I enter <password> on "Password" field
		And   I click on "Submit" button
		Then  I should login my account successfully



Feature: Lead submission verification
	Scenario: New user should sucessfully submit a lead on "Homepage lead capture form"
		Given I am a new user
		When  I am on "/"
		And   I enter a <name> on "Name" filed in  "Homepage Lead Capture form"
		And   I enter a valid <phone number> on "PHONE NUMBER" field
		And   I enter a valid <zipcode> on "ZIP CODE" field
		And   I click on "GET A QUOTE" button
		Then  I should be navigated to "Storage Selection" page
