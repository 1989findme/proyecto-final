# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.delete_all
12.times do |i|
User.create(
  email: Faker::Internet,
  password: "123456xx",
  name: Faker::Name.name_with_middle,
  address: Faker::Address.street_address,
  phone: Faker::PhoneNumber.cell_phone,
  rol: "client")
end

12.times do |i|
  Pet.create(

    photo:[File.open("/home/emanuel/Desktop/gato.jpg"),File.open("/home/emanuel/Desktop/gato(2).jpg"),File.open("/home/emanuel/Desktop/gato(3).jpg")],
    name: Faker::Dog.name,
    breed: Faker::Dog.breed,
    age: Faker::Dog.age,
    sex: Faker::Dog.gender,
    size: Faker::Dog.size,
  )

  photos.each do |photo|
    end
end
