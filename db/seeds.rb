# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 5.times do
#     Gife.create(
#         give_name: Faker::Appliance.equipment,
#         give_description: Faker::Hipster.sentences(number:3),
#         give_image: Faker::Placeholdit.image(size: '50x50'),
#         giver: Faker::Name.unique.name
#     )
# end
Client.create([
  { username: 'Freddy', password: 'Freddy' },
  { username: 'Diane', password: 'Diane' }
])
p 'seeded all clients'
Gife.create([
  { give_name: 'nice couch', give_description: 'stylish and comfy', give_image: 'beigeCouch.jpg', giver: 'old friend', client_id: 1 },
  { give_name: 'bookshelf', give_description: 'like brand new', give_image: 'bookshelf.jpg', giver: 'old friend', client_id: 1 },
  { give_name: 'uncomfortable chair', give_description: 'hurts my back, needs cushions', give_image: 'chair.jpg', giver: 'old friend', client_id: 1 },
  { give_name: 'mirror', give_description: 'stunning and free!', give_image: 'coolMirror.jpg', giver: 'old friend', client_id: 2 },
  { give_name: 'shoes', give_description: 'so great but not the right size', give_image: 'coolShoes.jpg', giver: 'old friend', client_id: 2 },
  { give_name: 'dresser', give_description: 'lots of storage', give_image: 'dresser.jpg', giver: 'old friend', client_id: 2 },
])
p 'seeded all gives'