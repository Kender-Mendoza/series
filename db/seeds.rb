# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tate_no_yuusha = Serie.create(name: "Tate no Yuusha no Nariagari", cover_page: "https://cdn.myanimelist.net/images/anime/1245/111800.jpg", serie_type: "serie", state: "new", number: 1, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")

claymore = Serie.create(name: "Claymore", cover_page: "https://cdn.myanimelist.net/images/anime/3/21834.jpg", serie_type: "serie", state: "new", number: 2, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")

elfen_lied = Serie.create(name: "Elfen Lied", cover_page: "https://cdn.myanimelist.net/images/anime/10/6883.jpg", serie_type: "serie", state: "new", number: 3, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")

another = Serie.create(name: "Another", cover_page: "https://cdn.myanimelist.net/images/anime/4/75509.jpg", serie_type: "serie", state: "new", number: 4, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")

isekai_maou = Serie.create(name: "Isekai Maou to Shoukan Shoujo no Dorei Majutsu Ω", cover_page: "https://cdn.myanimelist.net/images/anime/1011/113703.jpg", serie_type: "serie", state: "new", number: 5, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")

ijiranaide = Serie.create(name: "Ijiranaide, Nagatoro-san", cover_page: "https://cdn.myanimelist.net/images/anime/1900/110097.jpg", serie_type: "serie", state: "new", number: 6, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")

jujutsu_kaisen = Serie.create(name: "Jujutsu Kaisen (TV)", cover_page: "https://cdn.myanimelist.net/images/anime/1171/109222.jpg", serie_type: "serie", state: "new", number: 7, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
jujutsu_kaisen.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-01")

one_piece = Serie.create(name: "One Piece", cover_page: "https://cdn.myanimelist.net/images/anime/6/73245.jpg", serie_type: "serie", state: "new", number: 8, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
one_piece.episodes.create(number: 1.0, duration:'00:30:00', name: "first episode", aired: "2021-12-01")
one_piece.episodes.create(number: 2.0, duration:'00:30:00', name: "second episode", aired: "2021-12-01")
one_piece.episodes.create(number: 3.0, duration:'00:30:00', name: "threeth episode", aired: "2021-12-01")
