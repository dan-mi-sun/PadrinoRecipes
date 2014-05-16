Given(/^a chef called "(.*?)"$/) do |chef|
 @chef = Chef.create!( :first_name => "Ainsley", :last_name => "Harriot") 
end

Given(/^I've got some recipes$/) do
  3.times {|i| @chef.recipes << Recipe.new(:title => "Food #{i}")}
end

Given(/^that I am on the profile of "(.*?)"$/) do |chef|
  chef = @chef.id
  visit "/chef/#{chef}"
end

When(/^I choose to see all recipes by this chef$/) do
  click_link("All Recipes by this Chef")
end

Then(/^I should see an index page of all recipes by this chef$/) do
  expect(has_content?("Food")).to be_true
end

