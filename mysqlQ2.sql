 -- Q2 which country has most no. of invoices?
SELECT count(*) as c, billing_country FROM music_db.invoice
group by billing_country
order by c desc 
limit 1;