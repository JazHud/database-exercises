USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist_name = 'Pink Floyd';


# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE album_name = 'Stg. Pepper\'s Lonely Hearts Club Band';

# The genre for Nevermind
SELECT genre FROM albums WHERE album_name = 'Supernatural';

# Which albums were released in the 1990s
SELECT album_name FROM albums WHERE release_date > 1989 AND release_date < 2000;

# Which albums had less than 20 million certified sales
SELECT album_name FROM albums WHERE sales < 20;

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums WHERE genre LIKE '%rock%';