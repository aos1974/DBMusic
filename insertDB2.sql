-- INSERTING GENRES --
INSERT INTO genres
VALUES (1, 'Classic'), (2, 'POP'), (3, 'ROCK'), (4, 'Instrumental'), (5, 'Folk'), (6, 'Jazz'),
(7, 'Blues'), (8, 'Rap');


-- INSERTING SINGER LIST --

INSERT INTO singer_list
VALUES 
(1, 'Merilyn Monroe', 'F', '01/06/1926'),
(2, 'Michael Jackson', 'M', '29/08/1958'),
(3, 'Riley B. King', 'M', '16/09/1925'),
(4, 'Frank Sinatra', 'M', '12/12/1915'),
(5, 'Madonna Louise Ciccone', 'F', '16/08/1958'),
(6, 'Kanye Omari West', 'M', '08/07/1966'),
(7, 'Kylie Ann Minogue', 'F', '28/05/1968'),
(8, 'Robbie Williams', 'M', '13/02/1974'),
(9, 'Ritchie Blackmore', 'M', '14/04/1945');

-- INSERTING GENRE_LIST (link Singers with genres) --

INSERT INTO genre_list
VALUES
(1, 2), (2, 2), (3, 7), (4, 2), (5, 2), (6, 8), (7, 2), (8, 3), (9, 3), (9, 5), (4, 6);

-- INSERTING ALBUMS --

INSERT INTO albums
VALUES
(1, 'Deep Purple in Rock', '01/03/1970'), (2, 'Shadow of the Moon', '01/01/1997'),
(3, 'Take the Crown', '09/11/2012'), (4, 'Escapology', '01/01/2002'),
(5, 'Enjoy Yourself', '09/10/1989'),
(6, 'Late Registration', '30/08/2005'), (7, 'Jesus Is King', '10/01/2019'),
(8, 'Like a Virgin', '01/01/1984'),
(9, 'Christmas Songs By Sinatra', '30/11/1948'),
(10, 'In The Wee Small Hours', '01/04/1955'),
(11, 'Live at the Regal', '01/01/1965'),
(12, 'Thriller', '30/11/1982'), (13, 'Bad', '30/08/1987'),
(14, 'Greatest Hits Remixed', '10/10/2005');

-- INSERTING AUTHOR_LIST (Link Singers with albums) --

INSERT INTO author_list
VALUES
(9, 1), (9, 2), (8, 3), (8, 4), (7, 5), (6, 6), (6, 7), (5, 8), (4, 9), (3, 11), (2, 12), (2, 13), (1, 14);

-- INSERTING SONGS --

INSERT INTO songs
VALUES
(1, 'I Wanna Be Loved By You', 296, 14),
(2, 'Thriller', 357, 12), (3, 'Billie Jean', 297, 12), (4, 'Bad', 246, 13),
(5, 'Every Day I Have The Blues', 147, 11), (6, 'How Blue Can You Get', 180, 11),
(7, 'In The Wee Small Hours Of The Morning', 180, 10), (8, 'What Is This Thing Called Love?', 145, 10),
(9, 'Santa Claus Is Comin To Town', 240, 9),
(10, 'Material Girl', 244, 8), (11, 'Like A Virgin', 253, 8),
(12, 'Wake Up Mr. West', 41, 6), (13, 'Everything We Need', 168, 7),
(14, 'Nothing To Lose', 204, 5), (15, 'Enjoy Yourself', 226, 5),
(16, 'Shit On The Radio', 173, 3), (17, 'Not Like The Others', 256, 4),
(18, 'Speed King', 360, 1), (19, 'Shadow Of The Moon', 307, 2), (20, 'Magical World', 241, 2);

-- INSERTING COLLECTIONS --

INSERT INTO collections
VALUES
(1, 'POP HITS', '28/05/2022'),
(2, 'BLUES HITS', '28/05/2022'),
(3, 'FOLKS WORLD', '28/05/2022'),
(4, 'ROCK HITS', '28/05/2022'),
(5, 'RAP HITS', '28/05/2022'),
(6, '80-90xx Music HITS', '28/05/2022'),
(7, '60-70xx Music HITS', '28/05/2022'),
(8, '40-50xx Misic HITS', '28/05/2022');

-- INSERTING COLLECTION_LIST (Link Songs with Music collections) --

INSERT INTO collection_list
VALUES
(1, 2), (1, 3), (1, 4), (1, 10), (1, 11), (1, 17),
(2, 5), (2, 6),
(3, 19), (3, 20),
(4, 16), (4, 17), (4, 18),
(5, 12), (5, 13),
(6, 15), (6, 10), (6, 11), (6, 2), (6, 3), (6, 4),
(7, 18),
(8, 1), (8, 5), (8, 9);

