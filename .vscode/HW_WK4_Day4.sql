--1. How many actors are there with the last name ‘Wahlberg’?

select * 
from actor
where last_name like 'Wahl%'
                         --There are 2 Wahlbergs

--2. How many payments were made between $3.99 and $5.99?

select customer_id
from payment                    
where customer_id between 3.99 and 5.99
group by customer_id                            

                        --2 payments


--3. What film does the store have the most of? (search in inventory)

select film_id
from inventory
where film_id between 1 and 4580
order by film_id

                        -- ?


--4. How many customers have the last name ‘William’?

SELECT LAST_name
FROM customer
WHERE last_name LIKE 'Wi';
                        --none/ no data

--5. What store employee (get the id) sold the most rentals?
select 
from staff_id



--6. How many different district names are there?

SELECT district
FROM address    
                        --603

--7. What film has the most actors in it? (use film_actor table and get film_id)

select film_id
from film_actor
GROUP BY film_id
order by film_id
                        --film name? has 1000 actors

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT LAST_name
FROM store_id
WHERE last_name LIKE 'es';
                                --?

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT customer_id, SUM(amount)
FROM payment                    
        
WHERE customer_id BETWEEN 380 and 430
GROUP BY customer_id       
HAVING SUM(amount) > 250      

ORDER BY customer_id


--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT rating
FROM film
WHERE rating
HAVING MAXVALUE --?