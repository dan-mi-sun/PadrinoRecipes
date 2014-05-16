Given(/^an ingredient called "(.*?)"$/) do |name|
  @ingred = Ingredient.create!( :name => name )
end

Given(/^there is a recipe that contains "(.*?)"$/) do |name|
  @recipe = Recipe.new
  @recipe.ingredients << @ingred 
  @recipe.save!
end

Given(/^that I am on a recipe that includes an "(.*?)"$/) do |name|
  visit "/ingredient/#{@ingred.id}/recipes"
end

When(/^I choose to see all recipes including "(.*?)"$/) do |arg1|
  click_link("All Recipes With this Ingredient")
end

Then(/^I should see an index page of all recipes including this ingredient$/) do
  expect(has_content?("Egg")).to be_true
end

