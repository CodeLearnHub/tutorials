--TABLE Customer
CREATE TABLE Customer (id integer,
                       firstname varchar(100),
                       lastname varchar(100)
);

INSERT INTO Customer
  (id, firstname, lastname)
VALUES
  (1, 'Frank', 'Sinatra');

INSERT INTO Customer
  (id, firstname, lastname)
VALUES
  (2, 'Nick', 'Cave');

INSERT INTO Customer
  (id, firstname, lastname)
VALUES
  (3, 'Julian', 'Casablancas');

--TABLE Employee

CREATE TABLE Employee (id integer,
                       firstname varchar(100),
                       lastname varchar(100)
);

INSERT INTO Employee
  (id, firstname, lastname)
VALUES
  (1, 'Frank', 'Mills');

INSERT INTO Employee
  (id, firstname, lastname)
VALUES
  (2, 'James', 'DiCaprio');

INSERT INTO Employee
  (id, firstname, lastname)
VALUES
  (3, 'Larry', 'Birdman');

SELECT * FROM Customer;

SELECT * FROM Employee;

--UNION OPERATOR
SELECT
  firstname
FROM
  Customer

UNION

SELECT
  firstname
FROM
 Employee;

--UNION ALL OPERATOR
SELECT
  firstname
FROM
  Customer

UNION ALL

SELECT
  firstname
FROM
  Employee;