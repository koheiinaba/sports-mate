class Club < ApplicationRecord

	has_many :posts, dependent: :destroy
	belongs_to :user
	belongs_to :category
	attachment :club_image

	validates :name, presence: true
	validates :introduction, length: { maximum: 50 }
	validates :member, presence: true
	validates :place, presence: true
	validates :time, presence: true
end
