class Club < ApplicationRecord

	has_many :posts
	belongs_to :user
	belongs_to :category


end
