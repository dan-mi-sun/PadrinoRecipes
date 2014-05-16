Given(/^that I am on the category page$/) do
  visit '/categories'
end

When(/^I select "(.*?)"$/) do |cuisine|
  save_and_open_page
  click_link cuisine
end

Given(/^there is a recipe categorised as "(.*?)"$/) do |name|
  @recipe = Recipe.new
  @recipe.categories << Category.new(:name => name)
  @recipe.save!

end

When(/^I select "(.*?)" from the category list$/) do |name|
  click_link name
end

Then(/^I will see a list of vegetarian recipes$/) do
  expect(page.has_content?("Vegetarian")).to be_true
  expect(all('article.recipe').length).to eq(1)
end


Then(/^I will see a list of "(.*?)" recipes$/) do |french|
  expect(page.has_content?("French")).to be_true
end
