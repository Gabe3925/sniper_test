# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#how to create one seed user
User.create!(name:  "Gabe",
             email: "Fake@ford.foo",
             password:              "gabeiscool",
             password_confirmation: "gabeiscool")

99.times do |n|
  name  = Faker::Name.name
  email = "useremail#{n+1}@fake.fazz"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end