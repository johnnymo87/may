# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###REMOVE THIS USER BEFORE DEPLOYMENT
User.create!(login: "admin", password: "password", name: "admin", email: 'abc@mmail.com', profile_id: '1')

Article.create(user_id: User.first.id, title: "First Article", body: "Insert text here...", keywords: "first")
Article.create(user_id: User.first.id, title: "Second Article", body: "Insert text here...", keywords: "second")