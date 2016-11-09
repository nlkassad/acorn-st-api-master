# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

slots = Slot.create([{ time_block: '2016-11-11 09:00' },
                     { time_block: '2016-11-11 11:00' },
                     { time_block: '2016-11-11 13:00' }])
