PadrinoRecipies::App.controllers :ingredients do
  
  get :index do
    @ingredient = Ingredient.all
    render :'ingredients/index'
  end
  
  get :show, :with => :id, :map => "/ingredients" do
    @ingredient = Ingredient.find(params[:id])
    render :'ingredients/show'
  end

end
