require 'spec_helper'

describe IngredientRecipe do

  it { should belong_to(:recipes) }
  it { should belong_to(:ingredients) }

end
