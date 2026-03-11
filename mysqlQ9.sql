-- Q9 we want to give gifts to top customer so determine which country has spent most on music for each country? 

with customer_with_country as 
(SELECT customer.customer_id,first_name,last_name,billing_country as country,email,
 sum(total) as totalspend,row_number()over(partition by billing_country order by
sum(total) desc) as rownum
FROM music_db.customer 
join invoice on customer.customer_id=invoice.customer_id
group by 1,2,3,4,5
order by 4,5 desc)
select * from customer_with_country 
where rownum=1
;

