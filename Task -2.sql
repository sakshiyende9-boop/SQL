-- create table customers(customer_id serial primary key,
-- customer_name varchar,	city varchar,	phone_number bigint,	email varchar,	registration_date date
-- );

-- create table products (product_id serial primary key,
-- product_name varchar,	category varchar,	price int,	stock_quantity int,	supplier_name varchar,
-- supplier_city varchar, supply_date date);

-- create table orders(order_id serial primary key,
-- customer_id	int references customers(customer_id),order_date date,	order_amount int,	delivery_city varchar,	payment_mode varchar
-- );

-- create table order_items(order_item_id serial primary key,
-- order_id int references orders (order_id),	product_id int references products(product_id),	quantity int,	total_price int
-- );

--1.Joins

--select customer_name, city, order_date from customers c join orders o on c.customer_id=o.customer_id where 
extract(year from order_date)=2023 

--select product_name,category ,  total_price from customers c join orders o on c.customer_id=o.customer_id
join order_items oi on o.order_id=oi.order_id join products p on oi.product_id = p.product_id where c.city='Mumbai'

--select customer_name, order_date, total_price from customers c join orders o on  c.customer_id=o.customer_id join
 order_items oi on o.order_id=oi.order_id where payment_mode='Credit Card'

--select product_name,category ,  total_price from orders o join order_items oi on  o.order_id=oi.order_id 
 join products p on oi.product_id = p.product_id where order_date between '2023-01-01' and '2023-06-30'


--select customer_name, sum(qauntity) from customers c join orders o on c.customer_id=o.customer_id
join order_items oi on o.order_id=oi.order_id group by customer_name


--2.Distinct

--select distinct city from customers

--select distinct supplier_name from products

--select distinct payment_mode from orders

--select distinct category from products

-- select  distinct supplier_city from products


--3.Order by

--select * from customers order by customer_name asc

--select * from order_items  order by total_price desc

--select * from products order by price asc , category desc

--select order_id ,customer_id,order_date from orders order by order_date desc

--select delivery_city , count(*)from orders grouorder by delivery_city asc


--4.Limit and Offset

--select * from customers  order by customer_name limit 10

--select * from products order by price desc limit 5

--select * from orders order by customer_id offset 10 limit 10

--select order_id,order_date,customer_id from orders order by order_date desc limit 5

--select  distinct delivery_city from orders offset 10 limit 10


--5.Aggregate Functions

--select count(*) from orders

--select sum(order_amount) total_upi_revenue from orders where payment_mode='UPI'

--select avg(price ) from products 

--select max(order_amount)as max_total_price,min(order_amount) as min_total_price from orders 
where extract(year from order_date)=2023
 
--select product_id,sum(quantity) as total_quantity from order_items group by product_id


--6.Set Operations

-- select customer_id from orders where extract(year from order_date)=2022
-- intersect
-- select customer_id from orders where extract(year from order_date)=2023

-- select distinct product_id from orders o join order_items oi on o.order_id=oi.order_id where 
-- extract(year from order_date)=2022
-- except
-- select distinct product_id from orders o join order_items oi on o.order_id=oi.order_id where 
-- extract(year from order_date)=2023

-- select supplier_city from products
-- except
-- select city from customers

 -- select supplier_city from products
 -- union
 -- select city from customers

--select product_name from products where product_id in (select product_id from orders o join order_items oi on o.order_id=oi.order_id 
where extract(year from o.order_date)=2023)













































 
 



