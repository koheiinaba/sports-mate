class Post < ApplicationRecord

    has_many :favorites
    has_many :comments
    attachment :post_image

	belongs_to :user
	belongs_to :clubs
end
