CREATE table Orders( id int AUTO_INCREMENT PRIMARY KEY,
                   order_date Date,
                   amount DECIMAL(8,2),
                   customer_id INT,
                   FOREIGN KEY(customer_id) REFERENCES customers(id));


INSERT INTO customers(first_name, last_name, email_id)
    VALUES  ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
      
     
INSERT INTO Orders(order_date, amount, customer_id) VALUES 
('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
       
       
SELECT id from customers WHERE last_name = "George";
select * from Orders WHERE customer_id = 1;
select * from Orders where customer_id=(select id from customers where last_name ="George");


select * from customers, Orders where customers.id = Orders.customer_id;

select * from customers
JOIN Orders
	ON customers.id = Orders.customer_id;


SELECT *
FROM Orders
JOIN customers
    ON customers.id = Orders.customer_id;

SELECT first_name, last_name, order_date from customers
INNER JOIN Orders
	ON customers.id = Orders.customer_id
	ORDER BY order_date DESC;
	
	
	
SELECT * from customers
LEFT JOIN Orders
	ON customers.id = Orders.customer_id;
	
	
SELECT first_name, last_name, order_date from customers
LEFT JOIN Orders
	ON customers.id = Orders.customer_id
	ORDER BY order_date DESC;
	
SELECT * from Orders
RIGHT JOIN customers
	ON customers.id = Orders.customer_id;
	
	

SELECT first_name, order_date, SUM(amount) from customers
INNER JOIN Orders
	ON customers.id = Orders.customer_id
	GROUP BY Orders.customer_id
	ORDER BY Orders.amount;
	
	
	
	
select first_name, last_name , ifnull(sum(amount),0) AS total_spend
 from customers
 left join Orders 
 	on customers.id = Orders.customer_id
	 group by customers.id
	 order by total_spend desc;
	
	