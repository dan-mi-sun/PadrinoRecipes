PadrinoRecipies::App.controllers :recipes do
  
  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes

    render "recipes/by_category" 
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
