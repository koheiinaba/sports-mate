class Club < ApplicationRecord

	has_many :posts, dependent: :destroy
	belongs_to :user
	belongs_to :category
	attachment :club_image

end
