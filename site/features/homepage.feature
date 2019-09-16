@site @homepage @newUser
Feature: Site - Homepage

	Background:
		Given I am a new user
		And I am on "/"

		@linksAndButtons
		Scenario Outline: I want to use all button and link components
			When I press <element> from <component>
			Then I <expectedResult>

				Examples:
				| element          | component                  |  expectedResult                                       |
				| MakeSpace Logo   | Navigation                 | should be on "/"                                      |
				| Business Storage | Navigation                 | should be on "/business-storage"                      |
				| Features         | Navigation                 | should be on "/features" .                            |
				| Sales Number     | Navigation                 | should open the phone application                     |
				| Get Pricing      | Navigation                 | should be on "/get-storage-quote"                     |
				| Sales Number     | Reserve Space Form         | should open the phone application                     |
				| Get your price   | Ready to Make Space?       | should be on "/get-storage-quote"                     |
				| Get your price   | Get your free quote today. | should be on "/get-storage-quote"                     |
				| Sales Number     | Get your free quote today. | should open the phone application                     |
				| New York City    | Serving Cities             | should be on "/nyc"                                   |
				| Washington D.C   | Serving Cities             | should be on "/dc"                                    |
				| Baltimore        | Serving Cities             | should be on "/baltimore"                             |
				| Philadelphia     | Serving Cities .           | should be on "/philadelphia"                          |
				| Pittsburgh       | Serving Cities             | should be on "/pittsburgh"                            |
				| Boston           | Serving Cities             | should be on "/boston"                                |
				| Chicago          | Serving Cities             | should be on "/chicago"                               |
				| Detroit          | Serving Cities             | should be on "/detroit"                               |
				| Miami            | Serving Cities             | should be on "/miami"                                 |
				| Orlondo          | Serving Cities             | should be on "/orlondo"                               |
				| Tampa            | Serving Cities             | should be on "/tampa"                                 |
				| Jacksonville     | Serving Cities             | should be on "/jacksonville"                          |
				| Nashville        | Serving Cities             | should be on "/nashville"                             |
				| Denver           | Serving Cities             | should be on "/denver"                                |
				| Los Angeles      | Serving Cities             | should be on "/los-angeles"                           |
				| San Francisco    | Serving Cities             | should be on "/san-francisco"                         |
				| San Diego        | Serving Cities             | should be on "/san-diego"                             |
				| Seattle          | Serving Cities             | should be on "/seattle"                               |
				| Dallas           | Serving Cities             | should be on "/dallas"                                |
				| Austin           | Serving Cities             | should be on "/austin"                                |
				| Houston          | Serving Cities             | should be on "/houston"                               |
				| San Antonio      | Serving Cities             | should be on "/san-antonio"                           |
				| Phoenix          | Serving Cities             | should be on "/phoenix"                               |
				| Toronto          | Serving Cities             | should be on "/toronto"                               |
				| Sales Number     | Footer	                    | should open the phone application                     |
				| Email Us         | Footer                     | should open the mail application                      |
				| Facebook         | Footer                     | should be on "https://www.facebook.com/MakeSpaceCom"  |
				| Twitter          | Footer                     | should be on "https://www.twitter.com/makespace"      |
				| Instagram        | Footer                     | should be on "https://www.instagram.com/makespace"    |
				| Pinterest        | Footer                     | should be on "https://www.pinterest.com/GetMakeSpace" |
				| Support          | Footer                     | should be on "/account/login/?next=/support"          |
				| About            | Footer                     | should be on "/about/team"                            |
				| Locations        | Footer                     | should be on "/locations"                             |
				| Careers          | Footer                     | should be on "/about/careers"                         |
				| Features         | Footer                     | should be on "/features"                              |
				| Pricing          | Footer                     | should be on "/get-storage-quote"                     |
				| FAQ              | Footer                     | should be on "/faq"                                   |
				| Storage Rules    | Footer                     | should be on "/p/about/storage-rules"                 |
				| Tips             | Footer                     | should be on "/p/tips"                                |
				| Blog             | Footer                     | should be on "/blog"                                  |
				| Terms            | Footer                     | should be on "/p/legal/terms"                         |
				| Privacy          | Footer                     | should be on "/p/legal/privacy"                       |

		@leadCapture @submitLeadViaHomepage
		Scenario Outline: I want to submit a lead with valid information on homepage lead capture form
			When I submit <myInformation>
			Then I should be on "/book/storage"
				# We need information that meets all criteria for boundary and smoke/regression tests
				Examples:
				| myInformation |
				|               |
