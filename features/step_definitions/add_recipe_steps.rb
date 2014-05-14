Given(/^I choose to add a recipe$/) do
  click_link "Add a recipe"
end

When(/^I complete the form with valid information$/) do
  fill_in "Title", :with => "Ginger Biscuits"
  fill_in "Description", :with => "Add Ginger. Throw in a bowl. Bake. Done"
  fill_in "Instructions", :with => "Add Ginger. Throw in a bowl. Bake. Done"
  fill_in "Image url", :with => "http://someimage.com/adhdhj.jpg"
  fill_in "Preparation time", :with => "90 mins" 
  fill_in "Cooking time", :with => "90 mins" 
  fill_in "Serves", :with => 90 

  click_on "Create Recipe"
end

Then(/^a recipe should be created$/) do
  expect(Recipe.count).to eq(1)
  Recipe.count.should eq(1)

  expect(page.has_content?("Your recipe has been saved"))

end

