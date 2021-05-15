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

boku_no_hero_academia = Serie.create( name: "Boku no Hero Academia", cover_page: "https://cdn.myanimelist.net/images/anime/10/78745.jpg", serie_type_id: serie.id, state_id: finished_airing.id, synopsis: "The appearance of \"quirks,\" newly discovered super powers, has been steadily increasing over the years, with 80 percent of humanity possessing various abilities from manipulation of elements to shapeshifting. This leaves the remainder of the world completely powerless, and Izuku Midoriya is one such individual. Since he was a child, the ambitious middle schooler has wanted nothing more than to be a hero. Izuku's unfair fate leaves him admiring heroes and taking notes on them whenever he can. But it seems that his persistence has borne some fruit: Izuku meets the number one hero and his personal idol, All Might. All Might's quirk is a unique ability that can be inherited, and he has chosen Izuku to be his successor! Enduring many months of grueling training, Izuku enrolls in UA High, a prestigious high school famous for its excellent hero training program, and this year's freshmen look especially promising. With his bizarre but talented classmates and the looming threat of a villainous organization, Izuku will soon learn what it really means to be a hero.", quantity_episodes: 12, aired: "2021-12-01")
boku_no_hero_academia.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-01")
boku_no_hero_academia.episodes.create(number: 2, duration:'00:30:00', name: "second episode", aired: "2021-12-01")
boku_no_hero_academia.episodes.create(number: 3, duration:'00:30:00', name: "threeth episode", aired: "2021-12-01")

boku_no_hero_academia_2nd_season = Serie.create(name: "Boku no Hero Academia 2nd Season", 
                                                cover_page: "https://cdn.myanimelist.net/images/anime/12/85221.jpg",
                                                serie_type_id: serie.id, 
                                                state_id: coming_song.id, 
                                                synopsis: "At UA Academy, not even a violent attack can disrupt their most prestigious event: the school sports festival. Renowned across Japan, this festival is an opportunity for aspiring heroes to showcase their abilities, both to the public and potential recruiters.

                                                           However, the path to glory is never easy, especially for Izuku Midoriya—whose quirk possesses great raw power but is also cripplingly inefficient. Pitted against his talented classmates, such as the fire and ice wielding Shouto Todoroki, Izuku must utilize his sharp wits and master his surroundings to achieve victory and prove to the world his worth.", 
                                                quantity_episodes: 12, 
                                                aired: "2021-12-01")
boku_no_hero_academia_2nd_season.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-01")
boku_no_hero_academia_2nd_season.episodes.create(number: 2, duration:'00:30:00', name: "second episode", aired: "2021-12-01")
boku_no_hero_academia_2nd_season.episodes.create(number: 3, duration:'00:30:00', name: "threeth episode", aired: "2021-12-01")

bokuno_hero_academia_3rd_season = Serie.create( name: "Boku no Hero Academia 3rd Season", 
                                                cover_page: "https://cdn.myanimelist.net/images/anime/1319/92084.jpg", 
                                                serie_type_id: serie.id, 
                                                state_id: coming_song.id, 
                                                synopsis: "As summer arrives for the students at UA Academy, each of these superheroes-in-training puts in their best efforts to become renowned heroes. They head off to a forest training camp run by UA's pro heroes, where the students face one another in battle and go through dangerous tests, improving their abilities and pushing past their limits. However, their school trip is suddenly turned upside down when the League of Villains arrives, invading the camp with a mission to capture one of the students.

                                                           Boku no Hero Academia 3rd Season follows Izuku \"Deku\" Midoriya, an ambitious student training to achieve his dream of becoming a hero similar to his role model—All Might. Being one of the students caught up amidst the chaos of the villain attack, Deku must take a stand with his classmates and fight for their survival.", 
                                                quantity_episodes: 12, 
                                                aired: "2021-12-01")
bokuno_hero_academia_3rd_season.episodes.create(number: 1, duration:'00:30:00', name: "first episode", aired: "2021-12-01")
bokuno_hero_academia_3rd_season.episodes.create(number: 2, duration:'00:30:00', name: "second episode", aired: "2021-12-01")
bokuno_hero_academia_3rd_season.episodes.create(number: 3, duration:'00:30:00', name: "threeth episode", aired: "2021-12-01")

# Series prequel an sequel conection
boku_no_hero_academia.update_column(:sequel_id,boku_no_hero_academia_2nd_season.id)
boku_no_hero_academia_2nd_season.update_column(:prequel_id, boku_no_hero_academia.id)
boku_no_hero_academia_2nd_season.update_column(:sequel_id, bokuno_hero_academia_3rd_season.id)
bokuno_hero_academia_3rd_season.update_column(:prequel_id, boku_no_hero_academia_2nd_season.id)

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
