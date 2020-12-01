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
User.destroy_all
Kondo.destroy_all


puts "Start seeding Users..."


friddi = User.create!(
    username: "Friddi",
    first_name: "Friedrich",
    last_name: "Hegel",
    email: "Friedrich.Hegel@gmail.com",
    password: "123456"
)

kalle = User.create!(
    username: "Kalle",
    first_name: "Karl",
    last_name: "Marx",
    email: "Karl.Marx@gmail.com",
    password: "123456"
)

teddy = User.create!(
    username: "Teddy",
    first_name: "Theodor",
    last_name: "Adorno",
    email: "Theodor.Adorno@gmail.com",
    password: "123456"
)

fritzi = User.create!(
    username: "Fritzi",
    first_name: "Friedrich",
    last_name: "Nietzsche",
    email: "Friedrich.Nietzsche@gmail.com",
    password: "123456"
)

herb = User.create!(
    username: "herb",
    first_name: "Herbert",
    last_name: "Markuse",
    email: "herbert.markuse@gmail.com",
    password: "123456"
)

horki = User.create!(
    username: "horki",
    first_name: "Max",
    last_name: "Horkheimer",
    email: "max.horkheimer@gmail.com",
    password: "123456"
)

puts "End seeding Users, #{User.count} created ..."



puts "Start seeding Kondos..."


file = URI.open("https://images.unsplash.com/photo-1494232410401-ad00d5433cfa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8dmludGFnZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60")
kondo1 = Kondo.new(

  title: "My first Demo tape from 1995",
  description: "I originally recorded it when I was still a teenager and made it a Kondo so that you can have maximum joy of Rap vibes from the past!",
  location: "Hagelberger Str. 11 10965 Berlin",
  latitude: 52.4918226,
  longitude: 13.3842672,
  user: Friddi,
  reserved: false,
  active: true
  )

kondo1.image.attach(io: file, filename: 'tape.png', content_type: 'image/png')
kondo1.save
sleep(5)
puts "#{Kondo.count} created"


file = URI.open("https://images.unsplash.com/photo-1518893883800-45cd0954574b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=674&q=80")
kondo2 = Kondo.new(
  title: "My Grandma's Grammophone",
  description: "Although very good in shape, I am emotionally not capable of having it around me anymore, so please come by and fetch it ",
  location: "Kreuzbergstraße 17a, 10965 Berlin",
  latitude: 52.4892546,
  longitude: 13.374921,
  user: Fritzi,
  reserved: false,
  active: true
  )

kondo2.image.attach(io: file, filename: 'grammophone.png', content_type: 'image/png')
kondo2.save
sleep(5)
puts "#{Kondo.count} created"


file = URI.open("https://images.unsplash.com/photo-1509048191080-d2984bad6ae5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHZpbnRhZ2V8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=60")
kondo3 = Kondo.new(
  title: "Vintage Pocket Watch",
  description: "Just found this very old and sadly not functional watch when tidying my stuff during lock-down, for s.o. to repair maybe? ",
  location: "Nostitzstraße 15, 10961 Berlin",
  latitude: 52.4914043,
  longitude: 13.3904046,
  user: Fritzi,
  reserved: false,
  active: true
  )
kondo3.image.attach(io: file, filename: 'watch.png', content_type: 'image/png')
kondo3.save
sleep(5)
puts "#{Kondo.count} created"

file = URI.open("https://images.unsplash.com/photo-1473163928189-364b2c4e1135?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHZpbnRhZ2UlMjBib29rc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60")
kondo4 = Kondo.new(
  title: "Some old maps-posters for you?",
  description: "Hidden in an old box I found these old maps of Berlin, I kept some for myself, feel free to stop by and get one!",
  location: "Bergmannstraße 141, 10961 Berlin",
  latitude: 52.4890419,
  longitude: 13.3942448,
  user: Kalle,
  reserved: false,
  active: true
  )
kondo4.image.attach(io: file, filename: 'maps.png', content_type: 'image/png')
kondo4.save
sleep(5)
puts "#{Kondo.count} created"


file = URI.open("https://images.unsplash.com/reserve/oIpwxeeSPy1cnwYpqJ1w_Dufer%20Collateral%20test.jpg?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=916&q=80")
kondo5 = Kondo.new(
  title: "Tools from 1940s",
  description: "The elderly lady from the ground floor of our apartment building asked, if I knew someone who can use this set of tools.",
  location: "Nostitzstraße 15, 10961 Berlin",
  latitude: 52.4914043,
  longitude: 13.3904046,
  user: Fritzi,
  reserved: false,
  active: true
  )
kondo5.image.attach(io: file, filename: 'tools.png', content_type: 'image/png')
kondo5.save
sleep(5)
puts "#{Kondo.count} created"


file = URI.open("https://images.unsplash.com/photo-1488654091480-0a2443430a4a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjJ8fHZpbnRhZ2V8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=60")
kondo6 = Kondo.new(
  title: "Old tin Boxes",
  description: "used those in my kitchen, don't need them anymore",
  location: "Grunowstraße 11-21, 13187 Berlin",
  latitude: 52.5677108,
  longitude: 13.409336,
  user: Friddi,
  reserved: false,
  active: true
  )
kondo6.image.attach(io: file, filename: 'tinBoxes.png', content_type: 'image/png')
kondo6.save
sleep(5)
puts "#{Kondo.count} created"


file = URI.open("https://images.unsplash.com/photo-1516962126636-27ad087061cc?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fHZpbnRhZ2V8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=60")
kondo7 = Kondo.new(
  title: "Polaroid still working",
  description: "The Camera is still working but I don't find the rest to work",
  location: "Lotosweg 30-34, 13467 Berlin",
  latitude: 52.6142558,
  longitude: 13.3234351,
  user: Teddy,
  reserved: false,
  active: true
  )
kondo7.image.attach(io: file, filename: 'polaroid.png', content_type: 'image/png')
kondo7.save
sleep(5)
puts "#{Kondo.count} created"
>>>>>>> master


puts "End seeding Kondos, #{Kondo.count} created ..."


# berlin_districts = [ "Charlottenburg-Wilmersdorf", "Friedrichshain-Kreuzberg", "Lichtenberg", "Marzahn-Hellersdorf", "Mitte", "Neukölln", "Pankow", "Reinickendorf", "Spandau", "Steglitz-Zehlendorf", "Tempelhof-Schöneberg", "Treptow-Köpenick" ]
