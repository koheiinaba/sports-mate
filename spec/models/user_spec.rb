require 'rails_helper'

RSpec.describe User, type: :model do

	describe 'バリデーションのテスト' do
		before do
			@user = FactoryBot.create(:user)
		end

	 	context 'nameカラム' do
			it '空欄でないこと' do
	 			@user.name = ''
	 			expect(@user.valid?).to eq false;
	 		end
	 		it '2文字以上であること' do
	 			@user.name = 'a'
	 			expect(@user.valid?).to eq false;
	 		end

	 		it '20文字以下であること' do
	 			@user.name = Faker::Lorem.characters(number:21)
	 			expect(@user.valid?).to eq false;
	 		end
	 　　end
	end

	describe 'アソシエーションのテスト' do
	 	context 'clubモデルとの関係' do
	 		it '1:Nとなっている' do
	 			expect(User.reflect_on_association(:clubs).macro).to eq :has_many
	 		end
	 	end

	 	context 'favoriteモデルとの関係' do
	 		it '1:Nとなっている' do
	 			expect(User.reflect_on_association(:favorites).macro).to eq :has_many
	 		end
	 	end

	 	context 'commentモデルとの関係' do
	 		it '1:Nとなっている' do
	 			expect(User.reflect_on_association(:comments).macro).to eq :has_many
	 		end
	 	end
	end
end
