# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sounds = Sound.create!([{title: "grand_piano"},{title: "saw_synth"},{title: "voice"}])

sound = Sound.find_by(title: "grand_piano")

user =  User.create!({username: "tester", sound_id: sound.id})

