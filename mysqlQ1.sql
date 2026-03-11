-- Q1 we want to assign an senior employee to lead that project who is the most senior employee based on job title
SELECT title,first_name,last_name,email FROM music_db.employee
order by levels desc
limit 1;