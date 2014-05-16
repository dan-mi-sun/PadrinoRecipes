PadrinoRecipies::App.controllers :recipes do

  get :index do
    @recipes = Recipe.all
    render :'recipes/index'
  end

  get :index, :parent => :chef do
    @recipes = Chef.find(params[:chef_id]).recipes
    render :'recipes/index'
  end

  
  get :index, :parent => :category do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes
    @title = @category.name
    render :"recipes/index" 
  end

  get :index, :parent => :ingredient do
    @ingredient = Ingredient.find(params[:ingredient_id])
    @recipes = @ingredient.recipes
    @title = @ingredient.name
    render :"recipes/index"
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

  get :show, :with => :id, :map => "/recipes" do
    @recipe = Recipe.find(params[:id])
    @title = @recipe.title
    render :'recipes/show'
  end

end
