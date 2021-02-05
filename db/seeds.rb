# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(email: 'ibra@gmail.com')
user.fullname = 'ibra'
user.phonenumber = '0789859109'
user.gender = 'male'
user.address = 'kigali city'
user.password = 'ibra123'
user.user_role = 'admin'
user.save!