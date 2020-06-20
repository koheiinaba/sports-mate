require 'rails_helper'

RSpec.describe Category, type: :model do

  describe 'アソシエーションのテスト' do
    context 'clubモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:clubs).macro).to eq :has_many
      end
    end
  end


end
