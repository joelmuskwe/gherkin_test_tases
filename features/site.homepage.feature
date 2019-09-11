Feature: Site - Homepage

	Background:
		Given I am a new user
		And I am on "/"

		@site @homepage @uat @functional @regression @linksAndButtons
		Scenario Outline: I want to use all button and link components in Site - Homepage
			When I <action> <element> from <component>
			Then I <expectedResult>

			Examples:
			| action | element | component | expectedResult |
			|	press | MakeSpace Logo | Navigation | should be on "/" |
			|	follow | Business | Navigation | should be on "/business-storage" |
			|	follow | Features | Navigation | should be on "/features" |
			|	press | 855-758-3293 |  Navigation | should open the phone application |
			|	press | Get Pricing | Navigation | should be on "/get-storage-quote" |
		  | follow | 855-758-3293 | Reserve Space Form | should open the phone application |
			|	press | Get your price | Ready to Make Space? | should be on "/get-storage-quote" |
			|	press | Get your price | Get your free quote today. | Get your price | should be on "/get-storage-quote" |
			|	press | 855-758-3293 | Get your free quote today. | should open the phone application |
			|	follow | New York City | Serving Cities | should be on "/nyc" |
			|	follow | Washington D.C | Serving Cities | should be on "/dc" |
			|	follow | Baltimore | Serving Cities | should be on "/baltimore" |
			|	follow | Philadelphia | Serving Cities | should be on "/philadelphia" |
			|	follow | Pittsburgh | Serving Cities | should be on "/pittsburgh" |
			|	follow | Boston | Serving Cities | should be on "/boston" |
			|	follow | Chicago | Serving Cities | should be on "/chicago" |
			|	follow | Detroit | Serving Cities | should be on "/detroit" |
			|	follow | Miami | Serving Cities | should be on "/miami" |
			|	follow | Orlondo | Serving Cities | should be on "/orlondo" |
			|	follow | Tampa | Serving Cities | should be on "/tampa" |
			|	follow | Jacksonville | Serving Cities | should be on "/jacksonville" |
			|	follow | Nashville | Serving Cities | should be on "/nashville" |
			|	follow | Denver | Serving Cities | should be on "/denver" |
			|	follow | Los Angeles | Serving Cities | should be on "/los-angeles" |
			|	follow | San Francisco | Serving Cities | should be on "/san-francisco" |
			|	follow | San Diego | Serving Cities | should be on "/san-diego" |
			|	follow | Seattle | Serving Cities | should be on "/seattle" |
			|	follow | Dallas | Serving Cities | should be on "/dallas" |
			|	follow | Austin | Serving Cities | should be on "/austin" |
			|	follow | Houston | Serving Cities | should be on "/houston" |
			|	follow | San Antonio | Serving Cities | should be on "/san-antonio" |
			|	follow | Phoenix | Serving Cities | should be on "/phoenix" |
			|	follow | Toronto | Serving Cities | should be on "/toronto" |
			|	follow | 855-758-3293	 | Footer	| should open the phone application |
			|	follow | Email Us | Footer | should open the mail application |
		  | press | Facebook | Footer | should be on "https://www.facebook.com/MakeSpaceCom" |
			|	follow | Twitter | Footer | should be on "https://www.twitter.com/makespace" |
			|	follow | Instagram | Footer | should be on "https://www.instagram.com/makespace" |
			|	follow | Pinterest | Footer | should be on "https://www.pinterest.com/GetMakeSpace" |
			|	follow |	Support | Footer | should be on "/account/login/?next=/support" |
			|	follow |	About | Footer | should be on "/about/team" |
			|	follow |	Locations | Footer | should be on "/locations" |
			|	follow |	Careers | Footer | should be on "/about/careers" |
			|	follow |	Features | Footer | should be on "/features" |
			|	follow |	Pricing | Footer | should be on "/get-storage-quote" |
			|	follow |	FAQ | Footer | should be on "/faq" |
			|	follow |	Storage Rules | Footer | should be on "/p/about/storage-rules" |
			|	follow |	Tips | Footer | should be on "/p/tips" |
			|	follow |	Blog | Footer | should be on "/blog" |
			|	follow |	Terms | Footer | should be on "/p/legal/terms" |
			|	follow |	Privacy | Footer | should be on "/p/legal/privacy" |

		@site @homepage @uat @functional @regression @login @validLogin
		Scenario Outline: I want to login using valid credentials
			Given I am <user>
			And I am on "/"
			And I press "LOGIN"
			Then I should be on "/account/login"
			When I submit my <credentials>
			Then I should be on "/"
			And I should be logged in

			# We need QA accounts of various states, types and profiles
				# For example a user with no CC info, a user in Toronto
			Examples:
			| user | credentials |
			|	 |  |

		Scenario: I want to submit valid information in the leads form
			Given I am on "/"
			When I submit <myInformation>
			Then I should be on "/book/storage"

			# We need information that meets all criteria for boundary and smoke/regression tests
			Examples:
			| myInformation |
			|  |
