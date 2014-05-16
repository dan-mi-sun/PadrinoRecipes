Feature: View Recipes by Chef

  Background:
    Given a chef called "Ainsley Harriot"
    And I've got some recipes

  @wip
  Scenario: a visitor views an index of all recipes by a particular chef
    Given that I am on the profile of "Ainsley Harriot"
    When I choose to see all recipes by this chef
    Then I should see an index page of all recipes by this chef


