-- adding values to customers table (1/7)
insert into customers (first_name, last_name, phone_number, email, membership_level)
values
('Anna', 'Breeland', '547-461-1654', 'abreeland@hotmail.com','Bronze Level'),
('Brent', 'Camden', '202-256-2545', 'bcamden@yahoo.com','Silver Status'),
('Carter', 'DeMascus', '342-125-1543', 'cdemascus@hotmail.com', 'Gold Star'),
('Deanna', 'Elegante', '246-165-1643', 'delegante@hotmail.com', 'Bronze Level'),
('Edward', 'Fuller', '412-154-4426','efuller@yahoo.com', 'Gold Star'),
('Frannie', 'Garza','324-126-1540', 'frannieg@yahoo.com','Gold Star'),
('George', 'Harper','554-154-4687', 'gharper@hotmail.com','Silver Status'),
('Harry', 'Indigo', '123-566-1654', 'harryindigo@yahoo.com','Bronze Level'),
('Isabel', 'Juarez', '321-145-1654','ijuarez@hotmail.com', 'Gold Star'),
('Joseph', 'Kessler', '464-132-4652', 'jkessler@hotmail.com', 'Bronze Level'),
('Katherine', 'Lowell', '644-143-4542', 'klowell@hotmail.com', 'Bronze Level'),
('Laura', 'MacDowell', '445-465-3214', 'lmacdowell@yahoo.com', 'Bronze Level'),
('Matthew', 'Nolan', '465-487-9453', 'mnolan@hotmail.com', 'Gold Star'),
('Norman', 'Oakley', '642-154-1478', 'noakley@yahoo.com', 'Silver Status'),
('Ophelia', 'Polonius', '571-993-4311', 'opolonius@hotmail.com','Gold Star'),
('Patrick', 'Quigley', '454-223-1762', 'pquigley@hotmail.com', 'Silver Status'),
('Quinn','Rochester', '464-465-3223', 'qrochester1@hotmail.com', 'Gold Star'),
('Roger', 'Statham', '897-654-1302', 'rstatham@yahoo.com', 'Bronze Level'),
('Shanna', 'Tatum', '654-464-7891', 'statum@hotmail.com', 'Bronze Level'),
('Tanya', 'Ungermeyer', '465-987-1754', 'tungermeyer@yahoo.com','Silver Status'),
('Ultra', 'Violet', '134-467-2385', 'ultraviolet@hotmail.com', 'Gold Star')
;
select* from customers

-- adding values to movies table (2/7)
insert into movies (title, mpaa_rating, genre)
values
('The Batman', 'PG-13', 'Action'),
('Uncharted', 'PG-13', 'Adventure'),
('Death on the Nile', 'PG-13', 'Mystery'),
('House of Gucci', 'R', 'Crime'),
('Encanto', 'PG', 'Family'),
('Dog', 'PG-13', 'Comedy'), 
('The Lions of Fifth Avenue', 'G', 'Documentary'),
('The Little Paris Bookshop', 'PG-13', 'Romance')
;
select* from movies


-- adding values to employees table (3/7)
insert into employees (first_name,last_name, job_title)
values
('Helen', 'Brown', 'Manager'),
('Drake', 'Parker', 'Crew'),
('Josh', 'Nichols', 'Crew'),
('Alex', 'Zedd', 'Crew'),
('Daniel', 'McPhearson', 'Assistant Manager'),
('Lola', 'Greenwich', 'Crew'),
('Robert', 'Strickland', 'Crew'),
('Ryan', 'Larson', 'Crew')
;
select* from employees;

-- adding values to concession_products (4/7)
insert into concession_products (product_name, product_size, price)
values
('Popcorn','Large',10.99),
('Popcorn', 'Medium', 8.99),
('Popcorn', 'Small', 7.99),
('Coca-Cola', 'Large', 5.99),
('Coca-Cola', 'Medium', 4.99),
('Coca-Cola', 'Small', 3.99),
('Diet Coke', 'Large', 5.99),
('Diet Coke', 'Medium', 4.99),
('Diet Coke', 'Small', 3.99),
('7-Up', 'Large', 5.99),
('7-Up', 'Medium', 4.99),
('7-Up', 'Small', 3.99),
('Icee - Red', 'Large', 5.99),
('Icee - Red', 'Medium', 4.99),
('Icee - Blue', 'Large', 5.99),
('Icee - Blue', 'Medium', 4.99),
('Red Vines', 'One Size', 5.99),
('Buncha Crunch', 'One Size', 3.99),
('Milk Duds', 'One Size', 3.99),
('Dots', 'One Size', 3.99),
('Sour Patch Kids', 'One Size', 4.99)
;
select* from concession_products;

-- adding values to tickets table (5/7)
-- TICKETS - *Ticket ID, Customer ID(FK), Movie ID(FK), Time, Price, Ticket Type
insert into tickets (customer_id, movie_id, showing_date, showing_time, price, ticket_type)
values
(1,2,'2022-03-05','18:10', 12.99, 'Standard Adult'), -- Uncharted
(1,2,'2022-03-05','18:10', 12.99, 'Standard Adult'),
(1,2,'2022-03-05','18:10', 12.99, 'Standard Adult'),
(12,3, '2022-03-05', '18:25', 12.99, 'Standard Adult'), -- Death on the Nile
(12,3, '2022-03-05', '18:25', 12.99, 'Standard Adult'),
(6, 5, '2022-03-05', '18:25', 10.99, 'Gold Star Adult'), -- Encanto
(6, 5, '2022-03-05', '18:25', 10.99, 'Gold Star Adult'),
(6, 5, '2022-03-05', '18:25', 6.99, 'Child'),
(6, 5, '2022-03-05', '18:25', 6.99, 'Child'),
(6, 5, '2022-03-05', '18:25', 6.99, 'Child'),
(15,6, '2022-03-05', '18:45', 10.99, 'Gold Star Adult'), -- Dog
(15,6, '2022-03-05', '18:45', 10.99, 'Gold Star Adult'),
(10,1, '2022-03-05', '19:10', 12.99, 'Standard Adult'), -- The Batman
(10,1, '2022-03-05', '19:10', 12.99, 'Standard Adult'),
(10,1, '2022-03-05', '19:10', 12.99, 'Standard Adult'),
(10,1, '2022-03-05', '19:10', 12.99, 'Standard Adult'),
(14,7,'2022-03-05', '19:35', 12.99, 'Standard Adult'); -- The Lions of Fifth Avenue
select * from tickets join movies on tickets.movie_id = movies.movie_id;
select* from movies;
-- adding values to theater (6/7)
insert into theater (movie_id, available_tickets, purchased_tickets, showing_time, employee_id)
values
(2, 100, 59,'18:10', 2),
(3, 150, 10, '18:10', 4),
(1, 150, 130, '18:10', 3), 
(4, 125, 79, '18:00', 6),
(5, 120, 55, '18:25', 7),
(8, 100, 65, '18:35', 1),
(6, 100, 85, '18:45', 8),
(2, 100, 19,'20:15', 5),
(1, 150,135, '21:15', 2);
select* from theater;

-- add more employees in to man the concession stand and also to replace manager(1) in theater (6), and asst manager (5) in theater(8) 
insert into employees (first_name,last_name, job_title)
values
('Rio', 'Sanchez', 'Crew'),
('Carol', 'Bigelow', 'Crew'),
('Denver', 'Rodriguez', 'Crew'),
('Stacy', 'Milano', 'Crew'),
('London', 'Tipton', 'Crew'),
('Robert', 'Olinski', 'Crew'),
('Anna', 'Fitzgerald', 'Crew'),
('Delilah', 'Johannsen', 'Crew')
;
select* from employees;
select* from theater join employees on theater.employee_id = employees.employee_id 
select * from tickets join customers on tickets.customer_id = customers.customer_id 

-- adding values to concession_stand table (7/7)
insert into concession_stand (product_id, quantity, customer_id, employee_id)
values 
(8, 2, 1, 9),
(1, 2, 1, 9), 
(14, 1, 12, 10),
(3, 3, 6, 11), 
(2, 2, 6, 11), 
(6, 3, 6, 11), 
(4, 3, 6, 11), 
(3, 1, 15, 9), 
(16, 1, 15, 9),
(18, 1, 15, 9),
(5, 1, 15, 9), 
(21, 1, 10, 10),
(5, 4, 10, 10), 
(2, 4, 10, 10), 
(18, 2, 10, 10), 
(2, 1, 14, 9)
;

-- add more items to concession_products
insert into concession_products (product_name, product_size, price)
values
('Water Bottle', '16.9 oz', 3.99),
('Nachos with Cheese', 'Large', 9.99),
('Nachos with Cheese', 'Standard', 8.49),
('Picked Jalapenos', '4 oz', 1.49);

-- update employees in the theaters to switch out management
update theater set employee_id = 12 where theater_id = 7;
update theater set employee_id = 13 where theater_id = 8;
update theater set employee_id = 14 where theater_id = 6;

-- delete column from table - deleing purchased_tickets column from theater table 
-- 'alter table <table name> DROP <column name>';
alter table theater drop purchased_tickets;

-- use null for customer_id to show that employee purchased the item from the concession_stand 
insert into concession_stand (product_id, quantity, customer_id, employee_id)
values 
(1, 1, null, 2),
(4, 2, null, 2);



select * from concession_products 
select * from concession_stand 
select * from customers 
select * from employees 
select * from movies 
select * from theater
select * from tickets
