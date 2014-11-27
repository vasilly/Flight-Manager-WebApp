# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Aeroplane.create ([
	{ name: 'Gulfstream G450', 			cols: '2', rows: '8'},
	{ name: 'Cessna Citation Bravo', 	cols: '2', rows: '4'},
	{ name: 'Piper Cheyenne III', 		cols: '2', rows: '4'},
	{ name: 'Cessna Conquest', 			cols: '2', rows: '3'},
	{ name: 'Cessna 421', 				cols: '2', rows: '2'}
	])

Flight.create ([
  { plane_id: '1', origin: 'MEL', destination: 'SYD', dep_date: DateTime.new(2015,1,1,6), arr_date: DateTime.new(2015,1,1,6)},
  { plane_id: '5', origin: 'MEL', destination: 'PER', dep_date: DateTime.new(2015,1,1,6), arr_date: DateTime.new(2015,1,1,6)},
  { plane_id: '3', origin: 'MEL', destination: 'BNE', dep_date: DateTime.new(2015,1,1,6), arr_date: DateTime.new(2015,1,1,6)},
  { plane_id: '4', origin: 'MEL', destination: 'SYD', dep_date: DateTime.new(2015,1,1,6), arr_date: DateTime.new(2015,1,1,6)},
  { plane_id: '2', origin: 'MEL', destination: 'SYD', dep_date: DateTime.new(2015,1,1,6), arr_date: DateTime.new(2015,1,1,6)}
  ])



  # create_table "flights", force: true do |t|
  #   t.integer  "plane_id"
  #   t.string   "flight_no"
  #   t.string   "origin"
  #   t.string   "destination"
  #   t.datetime "dep_date"
  #   t.datetime "arr_date"
  #   t.string   "spare"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end