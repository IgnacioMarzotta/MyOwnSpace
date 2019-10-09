# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.destroy_all
Bodycolor.destroy_all
User.destroy_all

Bodycolor.create(name: 'Yellow', value: 'bg-card-yellow border-top-yellow text-dark')
Bodycolor.create(name: 'White', value: 'bg-card-white border-top-white text-dark')
Bodycolor.create(name: 'Grey', value: 'bg-card-grey border-top-grey text-dark')
Bodycolor.create(name: 'Black', value: 'bg-card-black border-top-black text-dark')
Bodycolor.create(name: 'Blue', value: 'bg-card-blue border-top-blue text-dark')
Bodycolor.create(name: 'Green', value: 'bg-card-green border-top-green text-dark')
Bodycolor.create(name: 'Orange', value: 'bg-card-orange border-top-orange text-dark')
Bodycolor.create(name: 'Red', value: 'bg-card-red border-top-red text-dark')
Bodycolor.create(name: 'Purple', value: 'bg-card-purple border-top-purple text-dark')

10.times do
    a = User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: 123456, password_confirmation: 123456)
    9.times do |i|
        Note.create(user_id: a.id, bodycolor_id: Bodycolor.all.sample.id, title: "Note n°#{i}", description: "Note n°#{i}'s description", content: "This is note n°#{i}'s content, here should be a pretty long lorem ipsum or something like that")
    end
end