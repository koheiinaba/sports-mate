class Post < ApplicationRecord

    has_many :favorites
    has_many :comments

	belongs_to :user
	belongs_to :clubs
end
