# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	email: 'a@a',
	name: '竈門',
    password: '111111',
)
User.create!(
    email: 'b@b',
    name: '冨岡',
    password: '222222'
)
User.create!(
    email: 'c@c',
    name: '煉獄',
    password: '333333'
)
User.create!(
    email: 'd@d',
    name: '時透',
    password: '444444'
)

Category.create!(name: 'バスケット')
Category.create!(name: '硬式テニス')
Category.create!(name: 'ソフトテニス')
Category.create!(name: 'バドミントン')
Category.create!(name: 'サーフィン')
Category.create!(name: 'スノーボード')
Category.create!(name: 'スケートボード')
Category.create!(name: 'サッカー')
Category.create!(name: 'フットサル')
Category.create!(name: '野球')
Category.create!(name: 'ソフトボール')
Category.create!(name: 'ゴルフ')
Category.create!(name: 'バレーボール')
