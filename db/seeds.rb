# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

editor = User.create(email: "editor@example.com", role: "editor", password: "password1", password_confirmation: "password1")

author = User.create(email: "author@example.com", role: "author", password: "password1", password_confirmation: "password1")



# require 'ffaker'

# 100.times do
#   Post.new.tap do |p|
#     p.name = Faker::Product.product_name
#     p.price = rand(1..1200)
#     p.save!
#   end
# end


# 100.times do
#   Account.new.tap do |a|
#     a.name = Faker::Name.name
#     a.save!
#   end
# end
