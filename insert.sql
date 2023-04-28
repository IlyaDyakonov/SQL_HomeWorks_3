INSERT INTO genres(genre_id, name_genres) VALUES
(1, 'Rock'), 
(2, 'Pop'), 
(3, 'Rap'), 
(4, 'Jazz'), 
(5, 'Country');

INSERT INTO artists(artist_id, performer_name) VALUES
(1, 'Король и Шут'), 
(2, 'Rammstein'), 
(3, 'Avril Lavigne'), 
(4, 'Taylor Swift'), 
(5, 'Eminem'), 
(6, 'Louis Armstrong'), 
(7, 'Duke Ellington'), 
(8, 'Dolly Parton');

INSERT INTO genres_performer (genre_id, artist_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 8);

INSERT INTO music_album(album_id, name_album, date_album) VALUES
(1, 'Камнем по голове', 2019),
(2, 'Mutter', 2001),
(3, 'Let Go', 2002),
(4, '1989', 2018),
(5, 'The Marshall Mathers LP', 2000),
(6, 'Ella and Louis', 1956),
(7, 'Ellington at Newport', 1956),
(8, 'Coat of Many Colors', 1971),
(9, 'Сollaborative', 2020);

INSERT INTO artists_albums (artist_id, album_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(1, 9),
(5, 9)

INSERT INTO song (song_id, song_name, song_time, album_id) VALUES
(1, 'Восставший из ада', '236', 1),
(2, 'Лесник', '230', 1),
(3, 'Кукла колдуна', '209', 1),
(4, 'Mein Herz brennt', '280', 2),
(5, 'Links 2 3 4', '216', 2),
(6, 'Sonne', '272', 2),
(7, 'Complicated', '240', 3),
(8, 'I am with You', '224', 3),
(9, 'Sk8er Boi', '203', 3),
(10, 'Shake It Off', '219', 4),
(11, 'Blank Space', '231', 4),
(12, 'Bad Blood', '211', 4),
(13, 'The Real Slim Shady', '284', 5),
(14, 'The Way I Am', '290', 5),
(15, 'Stan', '404', 5),
(16, 'Cheek to Cheek', '353', 6),
(17, 'Summertime', '235', 6),
(18, 'Cant We Be Friends', '227', 6),
(19, 'Take the A Train', '227', 7),
(20, 'Diminuendo and Crescendo in Blue', '867', 7),
(21, 'I Got It Bad', '190', 7),
(22, 'Coat of Many Colors', '184', 8),
(23, 'Traveling Man', '165', 8),
(24, 'The Mystery of the Mystery', '144', 8),
(25, 'Клоун на троне', '199', 9),
(26, 'Кровавая игра', '259', 9);

INSERT INTO collection (collection_id, name_collection, date_collection) VALUES
(1, 'Old hits', 1950),
(2, 'Best', 1980),
(3, 'MTV"s best', 1990),
(4, 'Best of rock', 2005),
(5, 'U.S. Top Charts', 2010),
(6, 'The best classic of its genre', 2015),
(7, 'rock legends', 2018),
(8, 'The longest tracks', 2020);

INSERT INTO song_collection (song_id, collection_id) VALUES
(16, 1),
(17, 1),
(23, 2),
(21, 2),
(18, 3),
(19, 3),
(22, 3),
(1, 4),
(2, 4),
(4, 4),
(7, 5),
(8, 5),
(13, 5),
(9, 6),
(10, 6),
(24, 6),
(3, 7),
(5, 7),
(6, 7),
(11, 8),
(12, 8),
(20, 8),
(14, 8),
(15, 8);