CREATE TABLE customer(
    customer_id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    Email varchar(1-100) not null,
    created_at DATETIME,
    last_update DATETIME,
    age int,

);

CREATE TABLE Concessions(
    snack_id serial primary key,
    quantity int,

);

CREATE TABLE Movies (
    movie_id serial primary key,
    title int,
    movie_time int,

);

CREATE TABLE Tickets(
    ticket_id serial primary key,
    customer_id int,
    ticket_name varchar(50),
    price numeric(8,2),
    description varchar,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE Payment (
    payment_id serial primary key,
    amount numeric(5,2),
    customer_id int,
    ticket_id int,
    snack_id int,
);

ALTER TABLE Payment
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id), 
ADD FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id);