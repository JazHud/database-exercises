USE codeup_test_db;

# Write SELECT statements to output each of the following with a caption:
# All albums in your table.

# After each SELECT add an UPDATE statement to:
# Make all the albums 10 times more popular (sales * 10)

SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
# Add SELECT statements after each UPDATE so you can see the results of your handiwork.
SELECT sales FROM albums;


# All albums released before 1980

# After each SELECT add an UPDATE statement to:
# Move all the albums before 1980 back to the 1800s
SELECT album_name FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
# Add SELECT statements after each UPDATE so you can see the results of your handiwork.
SELECT * FROM albums WHERE release_date = 1800;
SELECT * FROM albums;




# All albums by Michael Jackson

# After each SELECT add an UPDATE statement to:
# Change 'Michael Jackson' to 'Peter Jackson'
SELECT album_name FROM albums WHERE artist_name = 'Michael Jackson';

UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
# Add SELECT statements after each UPDATE so you can see the results of your handiwork.
SELECT * FROM albums WHERE artist_name = 'Peter Jackson';



