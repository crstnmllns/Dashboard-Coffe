# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1000.times do
    Sale.create(name: Faker::Coffee.blend_name,
                 amount: rand(1990..5490),
                 date_time: Faker::Date.between(from: 3.year.ago, to: Date.today),
                 origin: Faker::Coffee.origin)
end
