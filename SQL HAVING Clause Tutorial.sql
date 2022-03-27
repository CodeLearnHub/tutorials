CREATE TABLE erasmus (
	id integer,
	name varchar(100),
	country varchar(100),
	age integer
);

INSERT INTO erasmus
 	(id, name, country,age)
VALUES
    (1, 'John','USA',25),
    (2, 'Georgios','Greece',25),
    (3, 'Jim','Spain',28),
    (4, 'Odysseas','United Kingdom',30),
    (5, 'Helen','Belgium',32),
    (6, 'Constantine','Poland',34),
    (7, 'Sia','Greece',25),
    (8, 'Nikolaos','USA',28),
    (9, 'Lucas','Russia',29),
    (10,'Philip','Serbia',35);

		
SELECT  FROM erasmus;


SELECT id,name,age,country
FROM erasmus
GROUP BY id,name,age,country
HAVING age > 30;


SELECT COUNT(id)As 'Counter',Country,age 
FROM erasmus
GROUP BY country,age
HAVING COUNT(id) > 1;