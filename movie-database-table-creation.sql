-- MOVIE THEATER DATABASE BUILD
-- LEVEL 1 BUILD: CUSTOMERS, MOVIES, EMPLOYEES
	-- CUSTOMERS - *Customer Id, Customer First_Name, Customer Last_Name, Email, Membership Level
	-- MOVIES - *Movie ID, Movie Title, Rating, Genre
	-- EMPLOYEES - *Employee Id, Employee First_Name, Employee Last_Name, Job Title, Shift
	-- CONCESSION_PRODUCTS - *Product Id, Product_Name, price
-- LEVEL 2 BUILD: TICKETS, THEATER, CONCESSIONS
	-- TICKETS - *Ticket ID, Customer ID(FK), Movie ID(FK), Movie Title, Time, Price, Ticket Type
	-- THEATER - *Theater ID, Movie ID(FK), Available Seats, Purchased Seats, Movie Start Time, Employee ID (FK)
	-- CONCESSIONS - *Product ID, Product Name, Price, Employee ID (FK), Customer ID (FK)

-- LEVEL 1 BUILD: CUSTOMER, MOVIES, EMPLOYEES
-- CUSTOMERS - *Customer Id, Customer First_Name, Customer Last_Name, Email, Membership Level
create table customers(
	customer_id serial primary key,
	first_name varchar(100),
	last_name varchar(100),
	phone_number varchar(100),
	email varchar(100),
	membership_level varchar(100)
);
select* from customers;
-- MOVIES - *Movie ID, Movie Title, Rating, Genre
create table movies(
	movie_id serial primary key,
	title varchar(120),
	mpaa_rating varchar(120),
	genre varchar(100)
);
select* from movies;



-- EMPLOYEES - *Employee Id, Employee First_Name, Employee Last_Name, Job Title, Shift
create table employees(
	employee_id serial primary key,
	first_name varchar(100),
	last_name varchar(100),
	job_title varchar(100)
);
select* from employees; 
-- CONCESSION_PRODUCTS - *Product Id, Product_Name, size,price
create table concession_products ( 
	product_id serial primary key, 
	product_name varchar (100),
	product_size varchar (25), 
	price numeric(4,2)
);
select* from concession_products; 


-- LEVEL 2 BUILD: TICKETS, THEATER, CONCESSIONS
-- TICKETS - *Ticket ID, Customer ID(FK), Movie ID(FK), Time, Price, Ticket Type
create table tickets(
	ticket_id serial primary key,
	customer_id integer,
	foreign key (customer_id) references customers(customer_id),
	movie_id integer,
	foreign key (movie_id) references movies(movie_id),
	showing_date date, 	
	showing_time time,
	price numeric(5,2),
	ticket_type varchar(100)
);

select * from tickets;

-- THEATER - *Theater ID, Movie ID(FK), Available Seats, Purchased Seats, Movie Start Time, Employee ID (FK)
create table theater( 
	theater_id serial primary key,
	movie_id integer,
	foreign key (movie_id) references movies(movie_id),
	available_tickets integer,
	purchased_tickets integer, 
	showing_time time, 
	employee_id integer,
	foreign key (employee_id) references employees(employee_id)
);
select* from theater;
-- CONCESSION STAND - *STAND TRANSACTION, productID (FK), quantity, Employee ID (FK), Customer ID (FK)
create table concession_stand (
	stand_transaction serial primary key, 
	product_id integer,
	foreign key (product_id) references concession_products(product_id),
	quantity integer, 
	customer_id integer,
	foreign key (customer_id) references customers(customer_id),
	employee_id integer,
	foreign key (employee_id) references employees(employee_id)
);
select* from concession_stand


select* from customers -- table created, 21 rows filled out
select* from movies -- table created, 8 rows filled out
select* from employees -- table created, 8 rows filled out
select* from concession_products -- table created, 21 rows created
select* from tickets -- table created, 17 rows created
select* from theater -- table created
select* from concession_stand -- table created