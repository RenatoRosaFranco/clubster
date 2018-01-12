# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "Running seeds"

# Users
User.delete_all
u = User.create({
 name: 'Renato Franco',
 email: 'renato_ny@live.com',
 password: '123456',
 password_confirmation: '123456'
})

# Clubs
Club.delete_all
for i in 1..50 do
  Club.create({
   name: "A Club #{i}",
   description: 'A description for a club',
   tags: '#club #club #club',
   user_id: u.id
  })
end

p "Seeds finished"
