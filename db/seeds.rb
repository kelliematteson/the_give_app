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
User.create([
  { name: 'Kellie Matteson', email: 'kmatt@gmail.com', password: 'roccoAndmelody' },
  { name: 'Laura Randall', email: 'lauraloveslife@gmail.com', password: 'bestPasswordEva' }
])
p 'seeded all users'
Gife.create([
  { give_name: 'cool toaster', give_description: 'still works!', give_image: 'toaster.jpg', giver: 'old friend', user_id: 1 },
  { give_name: 'fridge', give_description: 'still works, but really ugly!', give_image: 'fridge.jpg', giver: 'old friend', user_id: 1 },
  { give_name: 'smart tv', give_description: 'better than a dumb one', give_image: 'tv.jpg', giver: 'old friend', user_id: 1 },
  { give_name: 'bed', give_description: 'pretty old', give_image: 'bed.jpg', giver: 'old friend', user_id: 2 },
  { give_name: 'dresser', give_description: 'you will love it, i promise', give_image: 'dresser.jpg', giver: 'old friend', user_id: 2 },
  { give_name: 'dress', give_description: 'beautiful and swingy', give_image: 'dress.jpg', giver: 'old friend', user_id: 2 },
])
p 'seeded all gives'