Feature: category selection when adding recipe

  Background:
    Given there is a category called "Vegetarian"

  Scenario: A visitor selects a category for a new recipe
    Given that I am on the add recipe page
      And I choose to add a recipe
      And I choose a "Vegetarian" 
    When I complete the form with valid information
    Then a "Vegetarian" recipe should be created
