PadrinoRecipies::App.controllers :categories do
  
  get :index do
    render :'categories/index'
  end
end
