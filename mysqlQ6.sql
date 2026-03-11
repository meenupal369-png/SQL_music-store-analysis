-- Q6 Details of customer who listens Rock music?
SELECT distinct first_name,last_name,email,country FROM music_db.customer
join invoice on customer.customer_id=invoice.customer_id
join invoice_line on invoice.invoice_id=invoice_line.invoice_id
where track_id in(
	SELECT track_id FROM music_db.track
	join genre on track.genre_id=genre.genre_id
	where genre.name like 'Rock'
);