# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Bodycolor.destroy_all

20.times do |i|
    User.create(
        username: Faker::Internet.username,
        email: Faker::Internet.email,
        password: 123456)
    end
    
Bodycolor.create(name: 'Dark', value: 'bg-dark text-white')
Bodycolor.create(name: 'White', value: 'bg-light text-dark border border-dark')
Bodycolor.create(name: 'Blue', value: 'bg-primary text-white')

20.times do |i|
    Note.create(title: "Note n°#{i}",
                description: "I'm note n°#{i}'s description",
                content: "This should be a lorem ipsum for note n°#{i}'s content"
    )

