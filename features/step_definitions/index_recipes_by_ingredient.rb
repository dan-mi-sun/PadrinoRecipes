Given(/^an ingredient called "(.*?)"$/) do |name|
  @ingred = Ingredient.create!( :name => name )
end

Given(/^there is a recipe that contains "(.*?)"$/) do |name|
  @recipe = Recipe.new
  @recipe.ingredients << @ingred 
  @recipe.save!
end


Given(/^that I am on the "(.*?)" page$/) do |arg1|
  visit "ingredients/#{@ingred.id}"
end

When(/^I choose to see all recipes including "(.*?)"$/) do |arg1|
  click_link("All Recipes With this Ingredient")
end

Then(/^I should see an index page of all recipes including this ingredient$/) do
  expect(has_content?("Egg")).to be_true
end

