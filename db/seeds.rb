# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'
# require 'csv'
require "open-uri"

puts "Start seeding Users..."

 
Friddi = User.create!(
    username: "Friddi",
    first_name: "Friedrich",
    last_name: "Hegel",
    email: "Friedrich.Hegel@gmail.com",
    password: "123456"
)

Kalle = User.create!(
    username: "Kalle",
    first_name: "Karl",
    last_name: "Marx",
    email: "Karl.Marx@gmail.com",
    password: "123456"
)

Teddy = User.create!(
    username: "Teddy",
    first_name: "Theodor",
    last_name: "Adorno",
    email: "Theodor.Adorno@gmail.com",
    password: "123456"
)

Fritzi = User.create!(
    username: "Fritzi",
    first_name: "Friedrich",
    last_name: "Nietzsche",
    email: "Friedrich.Nietzsche@gmail.com",
    password: "123456"
)

puts "End seeding Users, #{User.count} created ..."



puts "Start seeding Kondos..."


file = URI.open("https://images.unsplash.com/photo-1494232410401-ad00d5433cfa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8dmludGFnZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60")
# file = URI.open("https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png")
kondo1 = Kondo.new(
    title: "My first Demo tape from 1995",
    description: "I originally recorded it when I was still a teenager and made it a Kondo so that you can have maximum joy of Rap vibes from the past!",
    location: "Hagelberger Str. 10-15 10965 Berlin",
    user: Friddi,
    reserved: false,
    active: true
    )
    kondo1.image.attach(io: file, filename: 'tape.png', content_type: 'image/png')
    kondo1.save
    p kondo1


    # file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
    # article = Article.new(title: 'NES', body: "A great console")
    # article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


    
    file = URI.open("https://images.unsplash.com/photo-1518893883800-45cd0954574b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=674&q=80")
    kondo2 = Kondo.new(
        title: "My Grandma's Grammophone",
        description: "Although very good in shape, I am emotionally not capable of having it around me anymore, so please come by and fetch it ",
        location: "Kreuzbergstraße 17a, 10965 Berlin",
        user: Fritzi,
        reserved: false,
        active: true
        )
        kondo2.image.attach(io: file, filename: 'grammophone.png', content_type: 'image/png')
        kondo2.save



  file = URI.open("https://images.unsplash.com/photo-1509048191080-d2984bad6ae5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHZpbnRhZ2V8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=60")
  kondo3 = Kondo.new(
    title: "Vintage Pocket Watch",
    description: "Just found this very old and sadly not functional watch when tidying my stuff during lock-down, for s.o. to repair maybe? ",
    location: "Nostitzstraße 15, 10961 Berlin",
    user: Fritzi,
    reserved: false,
    active: true
    )
    kondo3.image.attach(io: file, filename: 'watch.png', content_type: 'image/png')
    kondo3.save

  file = URI.open("https://images.unsplash.com/photo-1473163928189-364b2c4e1135?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHZpbnRhZ2UlMjBib29rc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60")
  kondo4 = Kondo.new(
    title: "Some old maps-posters for you?",
    description: "Hidden in an old box I found these old maps of Berlin, I kept some for myself, feel free to stop by and get one!",
    location: "141, Bergmannstraße, 10961 Berlin",
    user: Kalle,
    reserved: false,
    active: true
    )
  kondo4.image.attach(io: file, filename: 'maps.png', content_type: 'image/png')
  kondo4.save

#   Kondo.create!(
#     title: "",
#     description: "",
#     picture:"",
#     location: "",
#     user: ,
#     reserved: false,
#     active: true
#     )

puts "End seeding Kondos, #{Kondo.count} created ..."



