
Feature: Site - /get-storage-quote

Background:
  Given I am a new user
  And I am on "/get-storage-quote/"

  Scenario: I wan to navigate to "/"
    When I click on "Maksespace" logo
    Then I should be on "/"

  Scenario: I want to submit a lead with valid information on /get-storage-quote
    When I submit <information> on lead from
    And I click on "Get Started" button
    Then I should be on "/book/storage"

    Examples:
    | myInformation |
    |               |

 Scenario: Sales number functionality
   When I click on "Sales Number"
   Then should open the phone application
