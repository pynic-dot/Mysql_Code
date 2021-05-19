CREATE TABLE inventory(
    item_name CHARACTER(3),
    price DECIMAL(3,1),
    quantity int);

INSERT INTO inventory(item_name,price,quantity) 
    VALUES('api', 45.1, 4),
        ('grp',33.1, 6);
# DELETE FROM inventory WHERE item_name = 'grp';

CREATE TABLE pricet(amount float, price double);
INSERT INTO pricet(amount, price) VALUES
(33333.999, 54665463.55855578646),
(2.2,3.000000000099),
(2.44657,0.100000000001);





CREATE TABLE peopleb(Name varchar(100), date_birth date);
INSERT INTO peopleb(Name, date_birth)
VALUES
("amit",'1996/10/02'),
("Shweta",'2002/10/02'),
("Abhishek", '2003/10/02');

DELETE FROM peopleb where Name =  ("shweta" AND "Abhishek");


SELECT Name, day(date_birth) from peopleb;

SELECT Name, month(date_birth) from peopleb;

SELECT Name, year(date_birth) from peopleb;
SELECT Name, dayname(date_birth) from peopleb;
SELECT Name,date_birth, dayofweek(date_birth) from peopleb;
SELECT Name,date_birth, dayofyear(date_birth) from peopleb;
SELECT Name,date_birth, monthname(date_birth) from peopleb;








SELECT concat(monthname(date_birth), " ", day(date_birth)," ", year(date_birth)) AS birth from peopleb;


SELECT name,date_format(date_birth, " was born on %d") from peopleb;


SELECT datediff(now(), date_birth) As NumberOfDay from peopleb;





















CREATE TABLE comments(content char(5), created_at timestamp DEFAULT now());
INSERT into comments(content) VALUES
("Hello"),
('bye'),
('good');

CREATE TABLE comments1(content char(10),changed_at timestamp DEFAULT now() on UPDATE now());