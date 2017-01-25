class Favorite < ApplicationRecord
  belongs_to :user
    belongs_to :article

    validates :user, presence: true
validates :user_id, uniqueness: { scope: :article_id }
validates :article, presence: true

  # belongs_to :article, counter_cache: :article_favorites_count
end
