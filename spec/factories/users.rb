FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number:10) }
    sequence(:email) { |n| "other#{n}@example.com" }
    password { '111111' }
    password_confirmation { '111111' }
  end
end