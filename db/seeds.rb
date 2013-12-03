# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do |i|
  u = User.create(name: Faker::Name.first_name, email: "user#{i+1}@example.com", password: "password", public_status: true)
  u.save!
  10.times do |j|
    c = u.containers.create( name: "container#{j}", description: "description" )
    c.save!
    5.times do
      l = c.links.create( name: Faker::Internet.domain_name, url: Faker::Internet.domain_name, description: "a link" )
      l.save!
    end
  end
end
