-- 1. Количество исполнителей в каждом жанре.
SELECT name_genres, COUNT(artist_id)   -- столбцы
FROM genres g                          -- в какой таблице
JOIN genres_performer a ON g.genre_id = a.genre_id
GROUP BY g.name_genres;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT name_album, COUNT(song_id)
FROM music_album m
JOIN song s ON s.album_id = m.album_id
WHERE date_album >= 2019 AND date_album <= 2020
GROUP BY m.name_album;

-- 3. Средняя продолжительность треков по каждому альбому.
SELECT name_album, AVG(song_time) as avg_track
FROM song
JOIN music_album ON song.album_id = music_album.album_id
GROUP BY music_album.name_album;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT performer_name 
FROM artists a
JOIN music_album ON a.artist_id = music_album.album_id 
WHERE date_album != 2020 OR date_album IS NULL;

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name_collection
FROM collection c
JOIN song_collection sc ON c.collection_id = sc.collection_id 
JOIN song s ON sc.song_id = s.song_id
JOIN music_album ma ON s.album_id = ma.album_id
JOIN artists_albums aa ON ma.album_id = aa.album_id
JOIN artists ON aa.artist_id = artists.artist_id
WHERE artists.performer_name = 'Король и Шут';

-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT ma.name_album
FROM music_album ma
JOIN artists_albums aa ON ma.album_id = aa.album_id
JOIN genres_performer gp ON aa.artist_id = gp.artist_id
GROUP BY ma.name_album
HAVING COUNT(DISTINCT gp.genre_id) > 1;

-- 7. Наименования треков, которые не входят в сборники.
SELECT s.song_name
FROM song s
LEFT JOIN song_collection sc ON s.song_id = sc.song_id
WHERE sc.collection_id IS NULL;

-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT a.performer_name
FROM artists a
JOIN music_album ma ON a.artist_id = ma.album_id
JOIN song s ON ma.album_id = s.album_id
WHERE song_time = (SELECT MIN(song_time) FROM song);

-- 9. Названия альбомов, содержащих наименьшее количество треков.
SELECT name_album
FROM music_album
WHERE album_id IN (
	SELECT album_id
	FROM song
	GROUP BY album_id
	HAVING COUNT(song_id) = (SELECT MIN(cnt) FROM (SELECT COUNT(song_id) AS cnt FROM song GROUP BY album_id) AS counts));