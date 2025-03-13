-- Active: 1738859629688@@127.0.0.1@3306@railway_system
CREATE DATABASE Railway_System;

use Railway_System;

CREATE table train_details(
    train_id int primary key,
    train_name varchar(25),
    destination varchar(25),
    arrival_time time,
    departure_time time
);

create table passenger_details(
    passenger_id int primary key,
    passenger_name varchar(25),
    age int,
    train_id int,
    foreign key(train_id) references train_details(train_id),
    pnr int
);

INSERT INTO train_details VALUES(
    1,
    "Rajdhani",
    "Delhi",
    "12:00:00",
    "12:30:00"
);

INSERT INTO train_details VALUES(
    2,
    "Shatabdi",
    "Mumbai",
    "13:00:00",
    "13:30:00"
);
INSERT INTO passenger_details VALUES(
    1,
    "Radhey",
    20,
    1,
    11012
);

INSERT INTO passenger_details VALUES(
    2,
    "Raj",
    25,
    1,
    11013
);
INSERT INTO passenger_details VALUES(
    3,
    "Rahul",
    30,
    1,
    11014
);

select * from passenger_details WHERE pnr = 11012;
select * from passenger_details WHERE passenger_name LIKE "R%";
select * from passenger_details WHERE passenger_name LIKE "%l";

