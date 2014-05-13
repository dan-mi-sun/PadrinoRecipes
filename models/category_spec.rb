require 'spec_helper'

  describe Category do

    describe "sub categories" do
      before do
        DietaryRequirements.create(:name => 'Vegetarian')
        Cuisine.create(:name => 'French')
      end

      it "should be able to be accessed by the Category model" do
        # asserts_equals 2, Category.count
        expect(Category.count).to be(2)

      end
    end
  end
