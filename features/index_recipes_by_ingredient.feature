Feature: View Recipes by Ingredient

  Background:
    Given an ingredient called "Egg"
    And there is a recipe that contains "Egg" 

  Scenario: a visitor views an index of all recipes containing a particular ingredient
    Given that I am on the "Egg" page
    When I choose to see all recipes including "Egg"
    Then I should see an index page of all recipes including this ingredient 
