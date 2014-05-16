PadrinoRecipies::App.controllers :chef do
  
 get :show, :with => :id, :map => "/chef" do 
   @chef = Chef.find(params[:id])
   render :'chef/show'
 end

 get :index do
   render :'chef/index'
 end

end
