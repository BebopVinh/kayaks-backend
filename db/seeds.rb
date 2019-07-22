# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Trip.destroy_all
Comment.destroy_all


User.create(name: 'cynthia', password_digest: '123')
User.create(name: 'john', password_digest: '123')
User.create(name: 'lola', password_digest: '123')

Trip.create(name: 'block island', water_type: 'bay', start_date: '8/4/19', end_date: '8/5/19')
Trip.create(name: 'hudson valley', water_type: 'river', start_date: '8/10/19', end_date: '8/12/19')
Trip.create(name: 'florida keys', water_type: 'flat', start_date: '9/4/19', end_date: '9/15/19')
Trip.create(name: 'finger islands', water_type: 'lake', start_date: '9/20/19', end_date: '9/30/19')
#
# Trip.create(name: 'block island', water_type: 'bay')
# Trip.create(name: 'hudson valley', water_type: 'river')
# Trip.create(name: 'florida keys', water_type: 'flat')
# Trip.create(name: 'finger islands', water_type: 'lake')

Comment.create(content: 'it was great!', user_id: 1, trip_id: 1)
Comment.create(content: 'i agree!', user_id: 2, trip_id: 1)
Comment.create(content: 'first time for me, liked it', user_id: 3, trip_id: 1)
Comment.create(content: 'rainy, cold', user_id: 1, trip_id: 2)
Comment.create(content: 'it was great!', user_id: 2, trip_id: 3)
Comment.create(content: 'saw an alligator', user_id: 3, trip_id: 4)
Comment.create(content: 'me too!', user_id: 1, trip_id: 4)
