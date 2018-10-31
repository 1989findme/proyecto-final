# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Pet.delete_all
12.times do |i|
User.create!(
  email: Faker::Internet.email,
  password: "123456xx",
  name: Faker::Name.name_with_middle,
  address: Faker::Address.street_address,
  phone: Faker::PhoneNumber.cell_phone,
  rol: "client")
end

12.times do |i|
  Pet.create!(
    user: User.order("RANDOM()").first,
    photo:[File.open("/home/emanuel/Desktop/gato.jpg"),File.open("/home/emanuel/Desktop/gato(3).jpg")],
    municipal_record: [true, false].sample,

    vaccines: [true, false].sample,
    name: Faker::Dog.name,
    breed: Faker::Dog.breed,
    age: Faker::Number.between(0, 6),
    sex: [0,1].sample,
    size: [0,1,2,3,4].sample,
  )

end
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
