FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number:10) }
    sequence(:email) { |n| "other#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end