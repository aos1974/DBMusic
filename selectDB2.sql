-- название и год выхода альбомов, вышедших в 2018 году --
SELECT name, releasedate FROM albums
WHERE releasedate BETWEEN '01/01/2018' AND '31/12/2018';

-- название и продолжительность самого длительного трека --
SELECT name, duration FROM songs
ORDER BY duration DESC
LIMIT 1;

-- название треков, продолжительность которых не менее 3,5 минуты --
-- в базе данных длительность зафиксирована в секундах --
SELECT name, duration FROM songs
WHERE duration >= 210;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно --
SELECT name FROM collections
WHERE releasedate BETWEEN '01/01/2018' AND '31/12/2020';

-- исполнители, чье имя состоит из 1 слова --
SELECT name FROM singer_list
WHERE name NOT LIKE '%% %%';

-- название треков, которые содержат слово "мой"/"my" --
SELECT name FROM songs
WHERE name iLIKE '%%my%%' OR name iLIKE '%%мой%%';
