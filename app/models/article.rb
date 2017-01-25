class Article < ApplicationRecord
validates :name,:title, :place, presence:true

	belongs_to :home
	mount_uploader :image, ImageUploader
		

	has_many :favorites, dependent: :destroy
	
	def favorited_by? user
    		favorites.where(user_id: user.id).exists?
	end
end
