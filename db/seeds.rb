# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# require 'csv'

puts "Start seeding Users..."

puts "End seeding Userrs, #{User.count} created ..."



puts "Start seeding Kondos..."


  Kondo.create!(
    title: "My first Demo tape from 1995",
    description: "",
    picture:"https://images.unsplash.com/photo-1494232410401-ad00d5433cfa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8dmludGFnZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60",
    location: "Hagelberger Str. 10-15 10965 Berlin",
    user: User.all.sample,
    reserved: false,
    active: true,
    created_at: Faker::Date.between(from: 4.days.ago, to: Date.today),
    updatet_at: 
    )

puts "End seeding Kondos, #{Kondo.count} created ..."



