-- Q4 we would like  to throw a promotional Music Festival in the city we made the most money which city has the best customers?
SELECT billing_city,sum(total) as total_value FROM music_db.invoice
GROUP BY billing_city
order by total_value desc
limit 1;
