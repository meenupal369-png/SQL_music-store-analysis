-- Q8 we want to find out the most popular music Genre for each country?
with popular_genre as(
SELECT invoice.billing_country,invoice.total,count(invoice_line.quantity) as Quantity, genre.name as genre, 
   row_number() over(partition by invoice.billing_country order by count(invoice_line.quantity)desc) as row_num
FROM music_db.invoice_line
    join invoice on invoice.invoice_id=invoice_line.invoice_id
    join customer on customer.customer_id=invoice.customer_id
    join track on track.track_id=invoice_line.track_id
    join genre on track.genre_id=genre.genre_id
group by invoice.billing_country,invoice.total,genre
order by invoice.total  desc)
select * from popular_genre where row_num <=1