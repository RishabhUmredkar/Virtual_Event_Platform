create database Microsoft;
create database Virtual_Event_platform;
create table Virtual_Event_platform.RegisterUser(id int primary key auto_increment not null, first_name varchar(45), last_name varchar(45), email varchar(45), password varchar(45));
select * from Virtual_Event_platform.RegisterUser;

CREATE TABLE Virtual_Event_platform.Venue_Event_ticket (
		id SERIAL PRIMARY KEY,
		event_name VARCHAR(45),
		event_category VARCHAR(45),
		event_date DATE,
		event_time TIME,
		event_duration INT,
		event_image VARCHAR(255),
		event_description VARCHAR(255),
		event_venue VARCHAR(255),
		event_address1 VARCHAR(255),
		event_address2 VARCHAR(255),
		event_country VARCHAR(255),
		event_state VARCHAR(255),
		event_city VARCHAR(255),
		event_pin_code INT,
		event_price INT,
		event_total_tickets INT
);

select * from Virtual_Event_platform.Venue_Event_ticket;



ALTER TABLE Virtual_Event_platform.Venue_Event_ticket
ADD COLUMN event_description VARCHAR(255) AFTER event_image;

ALTER TABLE Virtual_Event_platform.Venue_Event_ticket
ADD COLUMN event_address2 VARCHAR(255) AFTER event_address1;

ALTER TABLE Virtual_Event_platform.Venue_Event_ticket
MODIFY COLUMN event_date DATE;

UPDATE Virtual_Event_platform.Venue_Event_ticket
SET event_date = STR_TO_DATE(event_date, '%m/%d/%Y');













CREATE TABLE Virtual_Event_platform.Online_Event (
    id SERIAL PRIMARY KEY,
    event_name VARCHAR(45),
    event_category VARCHAR(45),
    event_date DATE,
    event_time TIME,
    event_duration INT,
    event_image VARCHAR(255),
    event_description VARCHAR(255),
    event_hosting VARCHAR(255), -- New field added
    event_price INT,
    event_total_tickets INT
);

UPDATE Virtual_Event_platform.Online_Event
SET event_date = STR_TO_DATE(event_date, '%m/%d/%Y');




UPDATE Virtual_Event_platform.Online_Event
SET event_date = STR_TO_DATE(event_date, '%m/%d/%Y')
WHERE id > 5;  -- Adjust the condition based on your data


select * from Virtual_Event_platform.Online_Event;




CREATE TABLE Virtual_Event_platform.OnlineEventTicketBook (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(45),
    address VARCHAR(255),
    country VARCHAR(255),
    state VARCHAR(255),
    city VARCHAR(255),
    pin_code INT,
    image VARCHAR(255),
    event_name VARCHAR(45),
    event_price INT,
    event_date DATE,
    event_time TIME,
    event_duration INT,
    event_description VARCHAR(255),
    event_hosting VARCHAR(255),
    ticket_price INT,
    total_tickets INT
);

select * from Virtual_Event_platform.OnlineEventTicketBook;
DROP TABLE IF EXISTS Virtual_Event_platform.OnlineEventTicketBook;


CREATE TABLE Virtual_Event_platform.OnlineEventTicketBook (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(45),
    address VARCHAR(255),
    country VARCHAR(255),
    state VARCHAR(255),
    city VARCHAR(255),
    pin_code INT,
    event_image VARCHAR(255),
    event_name VARCHAR(45),
    event_category VARCHAR(45),
    event_date DATE,
    event_time TIME,
    event_duration INT,
    event_description VARCHAR(255),
    event_host VARCHAR(255),
    quantity INT,
    total INT
);
ALTER TABLE Virtual_Event_platform.OnlineEventTicketBook
ADD COLUMN card_number VARCHAR(16) AFTER total,
ADD COLUMN expiry_date DATE AFTER card_number,
ADD COLUMN cvv INT AFTER expiry_date;

select * from Virtual_Event_platform.OnlineEventTicketBook;