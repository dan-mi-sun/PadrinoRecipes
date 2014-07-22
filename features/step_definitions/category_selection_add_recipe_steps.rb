Given(/^there is a category called "(.*?)"$/) do |name|
  @recipe = Recipe.new
  @recipe.categories << Category.new(:name => name)
  @recipe.save!
end

Given(/^that I am on the add recipe page$/) do
  visit 'recipes/new'
  pending # express the regexp above with the code you wish you had
end

Given(/^I choose a "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^a "(.*?)" recipe should be created$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

