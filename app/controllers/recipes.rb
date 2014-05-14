PadrinoRecipies::App.controllers :recipes do
  
  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes

    render "recipes/by_category" 
  end

  get :new do
    @recipe = Recipe.new
    render :'recipes/new'
  end

  post :create do
    @recipe = Recipe.new(params[:recipe])
    @recipe.save!

    flash[:notice] = "Your recipe has been saved"
  end

end
