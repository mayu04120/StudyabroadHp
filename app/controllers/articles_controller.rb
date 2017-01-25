class ArticlesController < ApplicationController
	before_action :authenticate_user!, only:[:favorite] 


def index
	# @homes = Home.all
    @q        = Article.search(params[:q])
    @articles = @q.result().page(params[ :page]).per(6)
end

def show
	@article = Article.find(params[:id])	
end

def create
  	@article=Article.new(article_params)
  	if @article.save
  	  redirect_to gratitude_path
  	else 
  	  # redirect_to top_path, flash: {alert: 'failed'}
       @q        = Article.ransack(params[:q])
       @articles = @q.result()
       flash.now[:alert] = "required blank is empty"
        render template: "home/top", action: :new

  	end
end
  private
   def article_params
   	params.require(:article).permit(:name, :title, :age, :contents, :place, :price, :country, :season, :image)
   end

   

end
