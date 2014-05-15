require 'spec_helper'

describe Recipe do
  it { should belong_to(:chef) }
  it { should have_many(:categorisations) }
  it { should have_many(:categories) }
  it { should have_many(:ingredient_recipes) }
  it { should have_many(:ingredients).through(:ingredient_recipes) }

end
