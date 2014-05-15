require 'spec_helper'

describe "RecipesController" do
  
  describe "GET to :new" do
    before do
    #Setup code
      get '/recipes/new'
    end
    #This is a test
    it "give us a status code of 200" do
    #Expectations
      expect(last_response.status).to eq(200)
      expect(last_response.ok?).to(be_true)
      last_response.status.should eq(200)
      last_response.ok?.should be_true
    end

  end

  describe "POST to :create" do
    before do
      params = {
        :recipe => {
        :title => Faker::Lorem.sentence,
        :description => Faker::Lorem.words(50).join(" "),
        :image_url => Faker::Internet.url,
        :instructions => Faker::Lorem.words(50).join(" "),
        :preparation_time => rand(180),
        :cooking_time => rand(90),
        :serves => rand(10),
        :ingredient_recipes_attributes => [
          {:qty => "200g", 
            :ingredient_attributes => {
            :name => "Flour",
            :image_url => Faker::Internet.url,
            :description => Faker::Lorem.words(50).join(" ")
            }
          },
          {:qty => 3,
            :ingredient_attributes => {
            :name => "Eggs",
            :image_url => Faker::Internet.url,
            :description => Faker::Lorem.words(50).join(" ")
            }
          },
          {:qty => "400g",
            :ingredient_attributes => {
            :name => "Sugar",
            :image_url => Faker::Internet.url,
            :description => Faker::Lorem.words(50).join(" ")
            }
          }
        ]
        }        
      }
      
      post '/recipes/create', params
    end

    it "Should create the Recipe, IngredientRecipe and INgredient in one hit" do
      expect(Recipe.count).to eq(1)
      expect(Ingredient.count).to eq(3)
      expect(IngredientRecipe.count).to eq(3)

      recipe = Recipe.first
      recipe.ingredient_recipes.length.should eq(3)
      recipe.ingredients.length.should eq(3)
      expect(recipe.ingredients.first.name).to eq("Flour")
      expect(recipe.ingredients.second.name).to eq("Eggs")
      expect(recipe.ingredients.third.name).to eq("Sugar")
    end

    it "should redirect to the homepage" do
      expect(last_response.redirect?).to be_true
    end

    end
#  describe "POST to :create" do
#    before do 
#      post '/recipes/create', { :recipe => { :title => "Chocolate Cake" }}
#    end
#
#    it "should save the recipe and redirect me" do
#      expect(Recipe.count).to eq(1)
#      expect(last_response.redirect?).to be true
#      follow_redirect!
#      expect(last_request.url).to be("/")
#    end
#  end
  #
  describe "nested routes" do
    before do
      @chef = Chef.create!(:first_name => "Ainsley", :last_name => "Harriot",:image_url => "http://i3.kym-cdn.com/entries/icons/original/000/0...", :biography => "Ainsley Harriott is an English celebrity chef and ...")

      @chef.recipes.create!(:title => "Food 1")

       Recipe.create!(:title => "Some other recipe")
    end

    describe "GET to chef/:chef_id/recipes" do
      before do
        get "/chef/#{@chef.id}/recipes"
      end

      it "should give us status 200" do
        expect(last_response.ok?).to be_true
      end

      it "should only display Food 1" do
        expect(last_response.body).to match(/Food 1/)
        expect(last_response.body).not_to match(/Some other recipe/)
      end
    end
  end

end
