# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.delete_all
City.create([{ name: 'Baltimore' }, 
             { name: 'New York'}, 
             { name: 'Los Angeles'},
             { name: 'Chicago'},
             { name: 'Houston'},
             { name: 'Phoenix'},
             { name: 'Philadelphia'},
             { name: 'San Antonio'},
             { name: 'San Diego'},
             { name: 'Dallas'},
             { name: 'San Jose'}])

State.delete_all
State.create([{name: 'Maryland'}])
