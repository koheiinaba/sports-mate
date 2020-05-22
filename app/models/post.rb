class Post < ApplicationRecord

    has_many :favorites, dependent: :destroy
    def favorited_by?(user)
  	favorites.where(user_id: user.id).exists?
    end
    has_many :comments, dependent: :destroy
	belongs_to :club
	attachment :post_image

end
