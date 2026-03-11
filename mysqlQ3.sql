-- Q3 what is the value of top 3 invoices?
SELECT * FROM music_db.invoice
order by total DESC limit 3;