CREATE TABLE IF NOT EXISTS genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS singer_list (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL UNIQUE,
    gender VARCHAR(1) NOT NULL,
    birthdate DATE
);

CREATE TABLE IF NOT EXISTS genre_list (
    singer_id INTEGER NOT NULL REFERENCES singer_list(id),
    genre_id INTEGER NOT NULL REFERENCES genres(id),
    CONSTRAINT genre_pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    releasedate DATE
);

CREATE TABLE IF NOT EXISTS author_list (
    singer_id INTEGER NOT NULL REFERENCES singer_list(id),
    album_id INTEGER NOT NULL REFERENCES albums(id),
    CONSTRAINT author_pk PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS songs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    duration INTEGER CHECK(duration > 0),
    album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    releasedate DATE
);

CREATE TABLE IF NOT EXISTS collection_list (
    collection_id INTEGER NOT NULL REFERENCES collections(id),
    song_id INTEGER NOT NULL REFERENCES songs(id),
    CONSTRAINT collection_pk PRIMARY KEY (collection_id, song_id)
);
