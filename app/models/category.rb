class Category < ApplicationRecord
	has_many :clubs

	validates :name, presence: true
end
