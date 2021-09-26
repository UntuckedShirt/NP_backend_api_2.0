# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Game.destroy_all

games = Game.create([
{title: "GuiltyGearStrive", publisher: "ArcSystems", publish_date: "May 14, 1998‎ - Present", console: "Playstation 4/Playstation 5", players: 2, image_url: "https://images.app.goo.gl/p3wfN5rJU5LUUPKX7"},
{title: "VirtuaFighter Ultimate Showdown", publisher: "Sega", publish_date: "October 1993", console: "Playstation 4", players: 2, image_url: "https://images.app.goo.gl/GSzDQwTBKEgGiZh67"},
{title: "DragonBallFighterZ", publisher: "ArcSystems", publish_date: "January 26, 2018", console: "Playstation 4/XboxOne", players: 2, image_url: "https://images.app.goo.gl/pN6YS1UcRknGx23x5"},
{title: "SuperSmashBros Ultimate", publisher: "Nintendo", publish_date: "January 26, 2018", console: "Switch", players: 8, image_url: "https://images.app.goo.gl/ea4oL4GFLHDrXXUs9"},
{title: "MortalKombat 11", publisher: "NeatherRealmStudios", publish_date: "April 23, 2019", console: "Playstation 4/Playstation 5/XboxOne, Xbox Series X", players: 2, image_url: "https://images.app.goo.gl/4FHSKk6e8TDiG3tR7"},
{title: "Street Fighter 5", publisher: "Capcom, Dimps", publish_date: "February 16, 2016 - Present", console: "Playstation 4", players: 2, image_url: "https://images.app.goo.gl/11zFFvQnYxDUPYaW9"}
])

reviews = Review.create([
    {title: 'Can GGS keep up the hype', description: 'GG is a good game but pails in compoarison to its predecessors', rating: 8, game: Game.all[0]},
    {title: 'A comeback we never thought we needed', description: 'Great game and remake overall. Hopefully this allows future Virtua fighters to be made', rating: 8, game: Game.all[1]},
    {title: 'This game is going bonkers', description: 'Ever since the last update this game has breathed new life into its community', rating: 8, game: Game.all[2]},
    {title: 'Masahiro Sakurais farewell', description: 'Best game in franchise. This is the final hoorah for smash and it couldnt have been any better. Where is the rollback netcode though?', rating: 9, game: Game.all[3]},
    {title: 'Not for me', description: 'This game slowed down the pace of what made MKX such a dominate force in the genre. Ill wait for mk12 and hope its better than what weve received', rating: 6, game: Game.all[4]},
    {title: 'Damn SF5 blown up', description: 'What a comeback from vanilla SF5 has proven to be great after a few updates and tweeks', rating: 7, game: Game.all[5]}



])