
Feature: Get results

    As a user I want to get on the endpoint with id and name saved in the results

    @get_results
    Scenario: Verify StatusCode
        When I make get request on the endpoint
        And see "200" as StatusCode
        Then I show the id and name
