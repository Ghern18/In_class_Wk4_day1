--this is a comment!
-- the same shortcuts still work
--use the tables in today's work, all the time, make friends with ERD in the SQL Tools connect



-- our "hello world" of sql down below

SELECT * FROM actor; --this takes the actor from the table, your ERD should be connected (DONT EVER USE PLAY BUTTON AGAIN)

SELECT * from payment; -- will not run cuz it's a compiled language NOT top to bottom language. It crams everything togather!!

-- it sees all the queries as a line, you have to have line endings - ; -

-- run selected, highlighted material (comand E E)

-- The cap letters do not make a difference

SELECT * from actor; -- When we run a query we get a new table. whether it's one number or a milion entries

SELECT *
FROM actor; --This is good habit to run for our eyes, computer will read in one line

--Python runs all the sequence, Sql can run one line instead of whole sequence.

SELECT FIRST_name, LAST_name
from actor;

--Now let's get more specific

SELECT FIRST_name, LAST_name
FROM actor
WHERE first_name LIKE 'Bob';
--Strings in Sql ----> use single quotes  - double quotes are for database idenitfiers
-- ' ' = strings
-- " " = DB


--Where clause let's us filter the table's results with a condition
SELECT FIRST_name, LAST_name
FROM actor
WHERE first_name LIKE 'Bob'; --this will be our filter, each statment is very specific select, from , where

-- like is used where clause
-- now we can use things other than a literal string



-- Modulo:
--      this % is a true wildcard for strings in sql
--      ANY number of characters

SELECT FIRST_name, LAST_name
FROM actor
WHERE first_name LIKE 'B%';

-- Underscore:
--      Is the wildcard for exactly one character

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'B___%';

-- Comparison operators
--      =       and LIKE as shown above
--      Greater     >       less        <
--      with equals? yep        >=      or      <=
--      Not equal <> 

SELECT *
FROM payment;

SELECT customer_id, amount
from payment
where amount > 0;

SELECT customer_id, amount
from payment
where amount < 0;

SELECT customer_id, amount
from payment
where amount <= -411.01; --value is inclusive


SELECT customer_id, amount
from payment
where amount BETWEEN 2 and 200; -- between 2 values

SELECT customer_id, amount
from payment
where amount BETWEEN -500 and -400;


SELECT customer_id, amount
from payment
where amount > 200 or amount < -400; -- you have to have full statment - amounts


SELECT customer_id, amount
from payment
where amount > 2
ORDER BY amount DESC --ASC by default is assending and DESC is descending


SELECT customer_id, amount
from payment
where amount <> -406.01 -- <>  is does not equal
order by amount desc

-- Let's reiterate - ORDER MATTER!!!!:
--selest
--from
--where
--order by


SELECT customer_id, amount
from payment
where amount <> -406.01
order by amount desc


--SQL is OLD!!!

-- Look at diagram, theres info that might be similar
--distilling what we want to get 


select * 
from payment
where amount > 200
order by amount

SELECT customer_id, amount
from payment
where amount <> -406.01 -- <>  is does not equal
order by amount

select *
from customer_id

select first_name, last_name, email
from customer
where customer_id = 1

--AGGREGATIONS
--      SUM(), AVG(), COUNT(), MIN(), MAX()

select*
from payment

SELECT SUM(amount)  --putting the amount column in here
from payment; --this always has to reutrn a tablem, took all data, and returned 1 num back to us, from the sum column


SELECT AVG(amount)
from payment
where amount < -400


select COUNT(amount)
from payment --this counting all of IDs 
where amount = -411.01


select max(amount)
from payment

select MIN(amount)
from payment


select COUNT(distinct amount) -- counts unique values, 
from payment
where amount > 2;

select COUNT(distinct amount) as unique_pos_value --aliasing
from payment
where amount > 2;


--Group by :
--      any column selected not in aggregate must be in a group by
--      group by used with aggregates to modify how rows go together

select amount, count(amount), sum(amount)
from payment
group by amount -- showing 48 entries but alot of it repeated
order by sum(amount) desc -- need to choose the same column - amount

select amount 
from payment
where amount = -416

select amount, count(amount)
from payment
group by amount
order by count(amount)desc ---411.01 "is our winner"



-- have to have group by when you have an qggregate column

select *
from customer
where email like '%.white@%.org'

select count(customer_id), email
from customer
where email like '%.white@%.org'
group by email
having count(customer_id) > 0 -- HAVING is like where but for aggregates


-- thicker convuluted query below





select customer_id, sum(amount) -- what columns do we want to see/use?
from payment                    -- from what table?
                    --these are our basic building blocks!
where customer_id between 1 and 198 -- how? or filter for columns
group by customer_id                --using aggregates with other columns
having sum(amount) < 0              -- filtering based on an aggregate
                                    --can NOT COME before the group by
order by customer_id                -- changing how our return table looks
-- constraints?

LIMIT 5 -- just a constraint on results
offset 2 -- chops off the number of rows, very niche and kinda rare


--not typeing alot of sql queery's, gonna be using other tools but it is another skill :)


--HW - create another sql file











