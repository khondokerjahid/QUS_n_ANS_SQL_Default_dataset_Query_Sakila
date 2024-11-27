show databases;
/* ______________Question Number 01 Start_________________*/
SELECT 
    actor_id,
    CONCAT(first_name, ' ', last_name) AS Full_Name,
    last_update
FROM
    sakila.actor
WHERE
    concat(first_name, ' ', last_name) = 'SUSAN DAVIS';

/* ______________Question Number 01 END_________________*/

/* ______________Question Number 02 Start_________________*/

SELECT 
    CONCAT(first_name, ' ', last_name) AS Full_Name,
    last_update
FROM
    sakila.actor
WHERE
      date(last_update) ='2006-02-15';

/* ______________Question Number 02 END_________________*/

/* ______________Question Number 03 Start_________________*/
SELECT 
    COUNT(*) 
FROM
    sakila.actor
Where 
	date(last_update) ='2006-02-15';
    
/* ______________Question Number 03 END_________________*/

/* ______________Question Number 04 Start_________________*/

SELECT
    MIN(amount) as Minimum_Amount,
    MAX(amount) as Maximum_Amount,
    AVG(amount) as Average_Amount
FROM
    sakila.payment;

/* ______________Question Number 05 Start_________________*/

SELECT
    MAX(amount) as Maximum_Amount
FROM
    sakila.payment;
/* ______________Question Number 05 END_________________*/

/* ______________Question Number 06 Start_________________*/

SELECT *
FROM
    sakila.actor
ORDER BY actor_id DESC;

/* ______________Question Number 06 END_________________*/


/* ______________Question Number 07 Start_________________*/

insert into  
	sakila.actor (actor_id, first_name, Last_name, last_update) 
values 
	('201','John','Doe','2024-11-27');
    
/* ______________Question Number 07 END_________________*/

/* ______________Question Number 08 Start_________________*/

UPDATE sakila.actor 
SET 
    last_update = '2024-11-27'
WHERE
    sakila.actor_id = 5;

set sql_safe_updates = 0;

/* ______________Question Number 08 END_________________*/


/* ______________Question Number 09 Start_________________*/

DELETE FROM sakila.payment 
WHERE
    amount <=1;
    
set sql_safe_updates =1;

/* ______________Question Number 09 END_________________*/

/* ______________Question Number 10 Start_________________*/

SELECT 
    COUNT(*)
FROM
    sakila.film
WHERE
    rental_duration >= 5;

/* ______________Question Number 10 END_________________*/


