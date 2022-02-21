CREATE TABLE erasmus (
	id integer,
	name varchar(100),
	country varchar(100)
);

INSERT INTO erasmus
 	(id, name, country)
VALUES
	(1, 'John','USA'),
    (2, 'Georgios','Greece'),
    (3, 'Jim','Spain'),
    (4, 'Odysseas','United Kingdom'),
    (5, 'Helen','Belgium'),
    (6, 'Constantine','Poland'),
    (7, 'Sia','Greece'),
    (8, 'Nikolaos','USA'),
    (9, 'Lucas','Russia'),
    (10,'Philip','Serbia');

		
SELECT * FROM erasmus;


SELECT * FROM erasmus
WHERE country LIKE 's%';

SELECT * FROM erasmus
WHERE country LIKE '%e';

SELECT * FROM erasmus
WHERE country LIKE 'u__%';

SELECT * FROM erasmus
WHERE country LIKE '%ee%';

SELECT * FROM erasmus
WHERE country NOT LIKE '%ee%';