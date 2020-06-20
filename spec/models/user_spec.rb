require 'rails_helper'

RSpec.describe User, type: :model do

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
