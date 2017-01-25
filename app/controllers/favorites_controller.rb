class FavoritesController < ApplicationController
before_action :authenticate_user!, only:[:favorite] 

	def create
        @article = Article.find(params[:article_id])
        @favorite = current_user.favorites.build(article: @article)
        @favorite.save


    end

     def destroy
        @favorite = current_user.favorites.find_by!(article_id: params[:article_id])
        @favorite.destroy
        redirect_to article_path, notice: "お気に入りを解除しました"
    end

	    private
	  # strongparamator
	 def favorite_params
	 	params.require(:favorites).permit(:article_id, :user_id)
	 end

end
