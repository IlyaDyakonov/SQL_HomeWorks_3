-- 1. Название и год выхода альбомов, вышедших в 2018 году.
SELECT name_album, date_album
FROM music_album
WHERE date_album = 2018;

-- 2. Название и продолжительность самого длительного трека.
SELECT song_name, song_time
FROM song
WHERE song_time = (SELECT MAX(song_time) FROM song);

-- 3. Название треков, продолжительность которых не менее 3,5 минут(210 секунд).
SELECT song_name, song_time
FROM song
WHERE song_time >= 210;

-- 4. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name_collection
FROM collection
WHERE date_collection >= 2018 AND date_collection <= 2020;

-- 5. Исполнители, чьё имя состоит из одного слова.
SELECT performer_name
FROM artists
WHERE NOT performer_name LIKE '%% %%';

-- 6. Название треков, которые содержат слово «мой» или «my».
SELECT song_name
FROM song
WHERE song_name LIKE '%%мой%%' OR song_name LIKE '%%my%%' OR song_name LIKE '%%I%%';