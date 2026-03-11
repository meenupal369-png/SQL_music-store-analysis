-- Q5 who is the best customer? The customer who has spent the most money will be declared the best customer?
SELECT customer.customer_id,first_name,last_name,sum(total) as Amount FROM music_db.customer
join invoice on customer.customer_id=invoice.customer_id
group by customer_id, customer.first_name,customer.last_name
order by Amount desc
limit 1;