# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
10.times do
  name = Faker::Hobbit.location
  Department.create(name: name)
end

i = 1
Department.all.each do
  rand(5).times do
    name = Faker::Hobbit.character
    price = rand(100000).to_f
    Item.create(name: name, price: price, department_id: i)
  end
  i += 1
end
=end

i = 1
Item.all.each do
  rand(3).times do 
    author = Faker::AquaTeenHungerForce.character
    desc = Faker::ChuckNorris.fact
    Testimonial.create(desc: desc, author: author, item_id: i)
  end
  i += 1
end