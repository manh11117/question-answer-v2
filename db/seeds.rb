# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(id:  1, name:  "admin", email: "admin@gmail.com", password: "password", role: 0)

49.times do |n|
  User.create!(id:  n+2, name:  "user#{n+1}", email: "user#{n+1}@gmail.com", password: "password", role: [0, 1].sample)
end
