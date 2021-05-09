# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Series type
serie = SerieType.create(name: "Serie")
movie = SerieType.create(name: "Movie")
ova = SerieType.create(name: "OVA")
special = SerieType.create(name: "Special")

# State
coming_song = State.create(name: "coming song")
currently_airing = State.create(name: "currently airing")
finished_airing = State.create(name: "finished airing")

# Series
tate_no_yuusha = Serie.create(name: "Tate no Yuusha no Nariagari", cover_page: "https://cdn.myanimelist.net/images/anime/1245/111800.jpg", serie_type_id: serie.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
claymore = Serie.create(name: "Claymore", cover_page: "https://cdn.myanimelist.net/images/anime/3/21834.jpg", serie_type_id: serie.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
elfen_lied = Serie.create(name: "Elfen Lied", cover_page: "https://cdn.myanimelist.net/images/anime/10/6883.jpg", serie_type_id: serie.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
another = Serie.create(name: "Another", cover_page: "https://cdn.myanimelist.net/images/anime/4/75509.jpg", serie_type_id: serie.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
isekai_maou = Serie.create(name: "Isekai Maou to Shoukan Shoujo no Dorei Majutsu Ω", cover_page: "https://cdn.myanimelist.net/images/anime/1011/113703.jpg", serie_type_id: serie.id, state_id: currently_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
ijiranaide = Serie.create(name: "Ijiranaide, Nagatoro-san", cover_page: "https://cdn.myanimelist.net/images/anime/1900/110097.jpg", serie_type_id: serie.id, state_id: currently_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
jujutsu_kaisen = Serie.create(name: "Jujutsu Kaisen (TV)", cover_page: "https://cdn.myanimelist.net/images/anime/1171/109222.jpg", serie_type_id: serie.id, state_id: coming_song.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
one_piece = Serie.create(name: "One Piece", cover_page: "https://cdn.myanimelist.net/images/anime/6/73245.jpg", serie_type_id: serie.id, state_id: coming_song.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
one_piece.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-01")
one_piece.episodes.create(number: 2, duration:'00:30:00', name: "second episode", aired: "2021-12-01")
one_piece.episodes.create(number: 3, duration:'00:30:00', name: "threeth episode", aired: "2021-12-01")

# Movies 
kimetsu_movie = Serie.create(name: "Kimetsu no Yaiba Movie: Mugen Ressha-hen", cover_page: "https://cdn.myanimelist.net/images/anime/1704/106947.jpg", serie_type_id: movie.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
kimetsu_movie.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")
violeta_movie = Serie.create(name: "Violet Evergarden Movie", cover_page: "https://cdn.myanimelist.net/images/anime/1825/110716.jpg", serie_type_id: movie.id, state_id: coming_song.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
violeta_movie.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")
evangelion_the_end = Serie.create(name: "Neon Genesis Evangelion: The End of Evangelion", cover_page: "https://cdn.myanimelist.net/images/anime/1404/98182.jpg", serie_type_id: movie.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
evangelion_the_end.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")

# OVAs
snk_kuinaki_sentaky = Serie.create(name: "Shingeki no Kyojin: Kuinaki Sentaku", cover_page: "https://cdn.myanimelist.net/images/anime/8/69497.jpg", serie_type_id: ova.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
snk_kuinaki_sentaky.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")
hxh_animation = Serie.create(name: "Hunter x Hunter: Original Video Animation", cover_page: "https://cdn.myanimelist.net/images/anime/1/137.jpg", serie_type_id: ova.id, state_id: coming_song.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
hxh_animation.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")
hxh_green_island = Serie.create(name: "Hunter x Hunter: Greed Island", cover_page: "https://cdn.myanimelist.net/images/anime/13/37203.jpg", serie_type_id: ova.id, state_id: currently_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
hxh_green_island.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")

# Specials
one_piece_episodeof_merry = Serie.create(name: "One Piece: Episode of Merry - Mou Hitori no Nakama no Monogatari", cover_page: "https://cdn.myanimelist.net/images/anime/9/61015.jpg", serie_type_id: special.id, state_id: finished_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
one_piece_episodeof_merry.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")
kobayashi_san_valentine_soshite_onsen = Serie.create(name: "Kobayashi-san Chi no Maid Dragon: Valentine, Soshite Onsen! - Amari Kitai Shinaide Kudasai", cover_page: "https://cdn.myanimelist.net/images/anime/5/88486.jpg", serie_type_id: special.id, state_id: coming_song.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
kobayashi_san_valentine_soshite_onsen.episodes.create(number: 1, duration:'02:30:00', name: "first episode", aired: "2020-10-16")
killla_kill_specials = Serie.create(name: "Kill la Kill Specials", cover_page: "https://cdn.myanimelist.net/images/anime/12/73654.jpg", serie_type_id: special.id, state_id: currently_airing.id, synopsis: "the synopsis", quantity_episodes: 12, aired: "2021-12-01")
killla_kill_specials.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2020-10-16")
killla_kill_specials.episodes.create(number: 2, duration:'00:30:00', name: "second episode", aired: "2020-10-16")
