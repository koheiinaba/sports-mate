class Post < ApplicationRecord

    has_many :favorites
    has_many :comments
	belongs_to :club
	attachment :post_image

end
