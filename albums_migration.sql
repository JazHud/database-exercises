USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INTEGER AUTO_INCREMENT, -- Make SURE to add PRIMARY at the end for id or it WILL error
    artist_name VARCHAR(35),
    album_name VARCHAR(60),
    release_date INTEGER(4),
    sales FLOAT(7),
    genre VARCHAR(35),
    PRIMARY KEY(id),
    UNIQUE (artist_name, album_name)
);