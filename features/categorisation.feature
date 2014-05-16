Feature: Categorisation

  Background:
    Given there is a recipe categorised as "Vegetarian"
    And there is a recipe categorised as "Gluten Free"
    And there is a recipe categorised as "French"
   @wip 
  Scenario: A visitor sees all the recipes with a particular dietary requirement
    Given that I am on the category page
    When I select "Vegetarian Recipes"  
    Then I will see a list of "Vegetarian" recipes

  Scenario: A visitor sees all the recipes with a particular cuisine
    Given that I am on the category page
    When I select "French Recipes" 
    Then I will see a list of "French" recipes
