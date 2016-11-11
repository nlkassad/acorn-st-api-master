# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
slots = Slot.create([{ time_block: '2016-11-11 09:00', available: true},
                      { time_block: '2016-11-12 09:00', available: true},
                      { time_block: '2016-11-13 09:00', available: true},
                      { time_block: '2016-11-14 09:00', available: true},
                      { time_block: '2016-11-15 09:00', available: true},
                      { time_block: '2016-11-16 09:00', available: true},
                      { time_block: '2016-11-17 09:00', available: true},
                      { time_block: '2016-11-18 09:00', available: true},
                      { time_block: '2016-11-19 09:00', available: true},
                      { time_block: '2016-11-20 09:00', available: true},
                      { time_block: '2016-11-21 09:00', available: true}
                      ])
