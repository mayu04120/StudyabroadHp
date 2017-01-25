class HomeController < ApplicationController

	def top
		@article = Article.new
		@q        = Article.ransack(params[:q])
    		@articles = @q.result()
	end

	def about		
	end

	def gratitude
	end

end
