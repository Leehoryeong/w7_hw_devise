# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Faker::Lorem.sentence

(1..10).each do |p|
    Book.create title: Faker::Lorem.sentence, writer: Faker::Name.name, content: Faker::Lorem.paragraph   
end

    