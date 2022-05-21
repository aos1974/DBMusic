CREATE TABLE IF NOT EXISTS genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_list (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    birthdate DATE,
    genres_id INTEGER REFERENCES genres(id)
);

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    releasedate DATE,
    singer_id INTEGER REFERENCES singer_list(id)
);

CREATE TABLE IF NOT EXISTS songs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    duration INTEGER CHECK(duration > 0),
    album_id INTEGER REFERENCES albums(id)
);