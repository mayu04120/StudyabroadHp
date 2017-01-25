class HomesController < ApplicationController

def index
	@homes=Home.all
end
def show
		@home = Home.find(params[:id])
		
	end
  def create
  	@home=Home.new(home_params)
  	if @home.save
  	redirect_to homes_path(@home.id)
  	else 
  	redirect_to top_path
  	end
  end

  private
   def home_params
   	params.require(:home).permit(:name, :price,:agent,:goodpoint,:badpoint)
   end

  
end