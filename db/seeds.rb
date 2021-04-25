# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

serie = Serie.create(name: "Tate no Yuusha no Nariagari", cover_page: "https://cdn.myanimelist.net/images/anime/1245/111800.jpg")
serie.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-01")
serie.episodes.create(number: 2, duration:'00:30:00', name: "second episode", aired: "2021-12-01")
serie.episodes.create(number: 3, duration:'00:30:00', name: "threeth episode", aired: "2021-12-01")
Serie.create(name: "Claymore", cover_page: "https://cdn.myanimelist.net/images/anime/3/21834.jpg")
     .episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-2")
Serie.create(name: "Elfen Lied", cover_page: "https://cdn.myanimelist.net/images/anime/10/6883.jpg")
Serie.create(name: "Another", cover_page: "https://cdn.myanimelist.net/images/anime/4/75509.jpg")
Serie.create(name: "Isekai Maou to Shoukan Shoujo no Dorei Majutsu Ω", cover_page: "https://cdn.myanimelist.net/images/anime/1011/113703.jpg")
Serie.create(name: "Ijiranaide, Nagatoro-san", cover_page: "https://cdn.myanimelist.net/images/anime/1900/110097.jpg")
Serie.create(name: "Jujutsu Kaisen (TV)", cover_page: "https://cdn.myanimelist.net/images/anime/1171/109222.jpg")
Serie.create(name: "One Piece", cover_page: "https://cdn.myanimelist.net/images/anime/6/73245.jpg")
