CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL UNIQUE PRIMARY KEY,
	name_genres VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL UNIQUE PRIMARY KEY,
	performer_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_performer (
	genre_id INT NOT NULL,
	artist_id INT NOT NULL,
	FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE IF NOT EXISTS music_album (
	album_id SERIAL NOT NULL PRIMARY KEY,
	name_album VARCHAR(100) NOT NULL,
	date_album INT NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_albums (
	artist_id INT NOT NULL,
	album_id INT NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
	FOREIGN KEY (album_id) REFERENCES music_album(album_id)
);

CREATE TABLE IF NOT EXISTS song (
	song_id SERIAL NOT NULL PRIMARY KEY,	
	song_name VARCHAR(100) NOT NULL,
	song_time INT NOT NULL,
	album_id INT NOT NULL,
	FOREIGN KEY (album_id) REFERENCES music_album(album_id)
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL NOT NULL PRIMARY KEY,
	name_collection varchar(100) NOT NULL,
	date_collection INT NOT NULL
);

CREATE TABLE IF NOT EXISTS song_collection (
	song_id INT NOT NULL,
	collection_id INT NOT NULL,
	FOREIGN KEY (song_id) REFERENCES song(song_id),
	FOREIGN KEY (collection_id) REFERENCES collection(collection_id)