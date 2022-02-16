CREATE TABLE erasmus (
	id integer,
	name varchar(100),
	age integer, 
	country varchar(100)
);

INSERT INTO erasmus
 	(id, name, age, country)
VALUES
	(1, 'John', 25,'USA');
        (2, 'Georgios', 30,'Greece');
        (3, 'Jim', 27,'Spain');
        (4, 'Odysseas', 29,'United Kingdom');
		
SELECT * FROM erasmus;


SELECT * FROM erasmus
ORDER BY country;

SELECT * FROM erasmus
ORDER BY country DESC;


CREATE TABLE erasmus (
	id integer,
	name varchar(100),
	age integer, 
	country varchar(100)
);



INSERT INTO erasmus
 	(id, name, age, country)
VALUES
	(1, 'John', 25,'Greece');
        (2, 'Georgios', 30,'Greece');
        (3, 'Jim', 27,'Greece');
        (4, 'Odysseas', 29,'United Kingdom');

SELECT * FROM erasmus;





SELECT * FROM erasmus
ORDER BY country,name;



SELECT * FROM erasmus
ORDER BY country DESC ,name ASC;