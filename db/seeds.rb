# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do
    Give.create(
        give_name: Faker::Appliance.equipment,
        give_description: Faker::Hipster.sentences,
        give_image: Faker::Placeholdit.image(size: '50x50'),
        giver: Faker::Name.unique.name
    )
end
