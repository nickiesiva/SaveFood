# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Nicky Valentino",
             email: "nickiesiva@gmail.com",
             password: "qweasd",
             password_confirmation: "qweasd",
             admin: true)

99.times do |n|
  name = Faker::Name.name
  email = "emailkuke#{n+1}@kiona.com"
  password = "qweasd"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

users = User.first(7)
users.each do |user|
  50.times do |n|
    title = Faker::Lorem.sentence
    link = Faker::Internet.url
    description = Faker::Lorem.paragraph(3)
    user.postlinks.create!(
      title: title,
      link: link,
      description: description)
  end
end
