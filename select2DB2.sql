-- количество исполнителей в каждом жанре --
SELECT name, COUNT(singer_id) FROM genres g 
JOIN genre_list gl ON g.id = gl.genre_id 
GROUP BY name;

-- количество треков, вошедших в альбомы 2000-2020 годов --
SELECT COUNT(s.id) FROM albums a
JOIN songs s ON a.id = s.album_id 
WHERE a.releasedate BETWEEN '01/01/2000' AND '31/12/2020'
;

-- средняя продолжительность треков по каждому альбому --
SELECT a.name, AVG(duration) FROM albums a 
JOIN songs s ON a.id = s.album_id 
GROUP BY a.name
;

-- все исполнители, которые не выпустили альбомы в 2020 году --
SELECT DISTINCT sl.name FROM author_list al 
JOIN singer_list sl ON al.singer_id = sl.id 
WHERE album_id NOT IN (
	SELECT id FROM albums a 
	WHERE releasedate BETWEEN '01/01/2020' AND '31/12/2020')
;

-- названия сборников, в которых присутствует конкретный исполнитель: 'Michael Jackson' --
SELECT DISTINCT c.name FROM collections c 
JOIN collection_list cl ON c.id = cl.collection_id 
JOIN songs s ON s.id = cl.song_id 
JOIN albums a ON a.id = s.album_id 
JOIN author_list al ON al.album_id = a.id 
JOIN singer_list sl ON sl.id = al.singer_id 
WHERE sl.name LIKE 'Michael Jackson'
;

-- название альбомов, в которых присутствуют исполнители более 1 жанра --
SELECT a.name FROM albums a 
JOIN author_list al ON al.album_id = a.id 
JOIN singer_list sl ON sl.id = al.singer_id 
JOIN genre_list gl ON gl.singer_id = sl.id 
GROUP BY a.name
HAVING COUNT (gl.singer_id) > 1
;

-- наименование треков, которые не входят в сборники --
SELECT s.name FROM songs s 
LEFT JOIN collection_list cl ON s.id = cl.song_id 
WHERE cl.collection_id IS NULL
;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек --
SELECT sl.name, s.name AS song_name, s.duration FROM songs s 
JOIN albums a ON a.id = s.album_id 
JOIN author_list al ON al.album_id = a.id 
JOIN singer_list sl ON sl.id = al.singer_id
WHERE s.duration = (
	SELECT MIN(duration) FROM songs)
ORDER BY s.duration 
;

-- название альбомов, содержащих наименьшее количество треков --
SELECT a.name, COUNT (s.id) FROM albums a 
JOIN songs s ON a.id = s.album_id
GROUP BY a.name
HAVING COUNT (s.id) IN (
	SELECT COUNT (s2.id) FROM albums a2 
	JOIN songs s2 ON a2.id = s2.album_id 
	GROUP BY a2."name" 
	ORDER BY COUNT (s2.id)
	LIMIT 1
)
;
