--PERSON

--1
CREATE TABLE person(
	person_id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	age INTEGER,
  height_in_cm INTEGER,
  city VARCHAR(100),
  favorite_color VARCHAR(60)
);

--2
INSERT INTO person ( name, age, height_in_cm, city, favorite_color)
VALUES ('Mollie', 22, 160, 'Wichita', 'Purple'),
			 ('DJ', 22, 182, 'Wichita', 'Orange'),
       ('George', 22, 181, 'Wichita', 'Black'),
       ('Winslow', 2, 30, 'Wichita', 'Green'),
       ('Jho', 22, 150, 'Wichita', 'Salmon');

--4
SELECT * FROM person ORDER BY height_in_cm DESC;

--5
SELECT * FROM person ORDER BY height_in_cm ASC;

--6
SELECT * FROM person ORDER BY age DESC;

--7
SELECT * FROM person ORDER BY age ASC;

--8
SELECT * FROM person
WHERE age > 20;

--9
SELECT * FROM person
WHERE age = 18;

--10
SELECT * FROM person
WHERE age < 20 AND age >30;

--11
SELECT * FROM person
WHERE age < 20 
OR age > 30;

--12
SELECT * FROM person
WHERE age != 27;

--13
SELECT * FROM person
WHERE favorite_color != 'red';

--14
SELECT * FROM person
WHERE favorite_color != 'red' OR favorite_color != 'blue';

--15
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--16
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green' , 'Blue');


--17
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple' );



--TABLE Orders

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(100),
  product_price NUMERIC,
  quantity INTEGER
);

--2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (0, 'Udon', 9.50, 1),
			 (1, 'Omu-Rice', 8, 1),
       (2, 'Gyoza', 3.50, 2),
       (3, 'Ten-Don', 9, 3),
       (4, 'Onigiri', 3, 5);

--3
SELECT * FROM orders;

--4
SELECT SUM(quantity) FROM orders;

--5
SELECT SUM(product_price) FROM orders;

--6
SELECT SUM(quantity * product_price) FROM orders
WHERE person_id = 0;


--TABLE Artist

--1
INSERT INTO artist (name)
VALUES ('Smino'),
			 ('Orion Sun'),
       ('Blood Orange');

--2
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

--3
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

--4
SELECT * FROM artist
WHERE name LIKE 'Black%';

--5
SELECT * FROM artist
WHERE name LIKE '%Black%';


--Employee

--1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary%';

--2
SELECT MAX(birth_date) FROM employee;

--3
SELECT MIN(birth_date) FROM employee;

--4
SELECT * FROM employee
WHERE reports_to = 2;

--5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';


--Invoice

--1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

--2
SELECT MAX(total) FROM invoice;

--3
SELECT MIN(total) FROM invoice;

--4
SELECT * FROM invoice
WHERE total > 5;

--5
SELECT * FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--6
SELECT AVG(total) FROM invoice;

--7
SELECT SUM(total) FROM invoice;