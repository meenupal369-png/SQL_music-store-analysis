-- Q7 Let's invite the artist who have written the most music in our dataset?
SELECT artist.artist_id,artist.name,genre.name as genre,
count(artist.artist_id) as no_of_songs 
FROM music_db.artist
join album on artist.artist_id=album.artist_id
join track on album.album_id=track.album_id
join genre on track.genre_id=genre.genre_id
where genre.name like 'Rock'
group by artist.artist_id,artist.name,genre.name
order by no_of_songs desc;