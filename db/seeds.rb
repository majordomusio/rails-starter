# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add test data
admin = CreateUserService.new.call('admin','admin@example.com','changeme', :admin)

u1 = CreateUserService.new.call('user1','user1@example.com','changeme')
u2 = CreateUserService.new.call('user2','user2@example.com','changeme')
