# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rex = Player.create(email: 'rex@soul.com', gender: 'male', age: 22, level: 9)
pu2 = Player.create(email: 'pu2@soul.com', gender: 'male', age: 22, level: 9)
sasa = Player.create(email: 'sasa@soul.com', gender: 'male', age: 22, level: 9)

soccer = Sport.create(name: 'soccer')
gaming = Sport.create(name: 'gaming')
tennis = Sport.create(name: 'tennis')

Hobby.create(player: rex, sport: soccer)
Hobby.create(player: sasa, sport: soccer)
Hobby.create(player: rex, sport: gaming)
Hobby.create(player: pu2, sport: tennis)

