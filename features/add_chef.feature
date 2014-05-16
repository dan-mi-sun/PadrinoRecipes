Feature: Add a Chef

  Scenario: a visitor adds a chef
    Given that I am on the homepage
      And I choose to add a chef
    When I complete the form with valid information
    Then a chef should be created
