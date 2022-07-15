
Feature: Register new contact 

    As a user I want to register a new contact

    @register
    Scenario: Register
        When I register a new user
        Then see "201" as code response