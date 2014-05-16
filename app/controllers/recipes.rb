PadrinoRecipies::App.controllers :recipes do

  get :index, :parent => :chef do
    @recipes = Chef.find(params[:chef_id]).recipes
    render :'recipes/index'
  end

  get :index do
    @recipes = Recipe.all
    render :'recipes/index'
  end
  
  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes

    render "recipes/by_category" 
  end

  get :by_ingredient, :with => :ingredient_id do
    @ingredient = Ingredient.find(params[:ingredient_id])
    @recipes = @ingredient.recipes

    render "recipes/by_ingredient"
  end

  get :new do
    @recipe = Recipe.new
    3.times { @recipe.ingredient_recipes.build(:ingredient => Ingredient.new) }
    render :'recipes/new'
  end

  post :create do
    @recipe = Recipe.new(params[:recipe])
    @recipe.save!

    flash[:notice] = "Your recipe has been saved"
    redirect "/"
  end

end
