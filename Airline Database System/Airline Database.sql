create database airline;
use airline;

create table flight
( 
idFlight int not null,
departureT time,
arrivalT time,
destination varchar(45),
primary key (idFlight)
);

create table passenger
( 
idPassenger int not null,
Fname varchar(45) not null,
Mint char,
Lname varchar(45) not null,
passportNum varchar(45) not null,
nationality varchar(45) not null,
primary key (idPassenger)
);

create table flightCrew
( 
idStaff int not null,
Fname varchar(45) not null,
Mint char,
Lname varchar(45) not null,
role varchar(45) not null,
salaryMonthly decimal(5),
primary key (idStaff)
);

create table tickets
( 
idTickets int not null,
seat varchar(45) not null,
class varchar(45) not null,
price decimal(5),
passenger_idPassenger int not null,
flight_idFlight int not null,
primary key (idTickets),
foreign key (passenger_idPassenger) references passenger(idPassenger),
foreign key (flight_idFlight) references flight(idFlight)
);

create table baggage
( 
idBaggage int not null,
weight decimal(3),
status varchar(45),
passenger_idPassenger int not null,
flight_idFlight int not null,
primary key (idBaggage),
foreign key (passenger_idPassenger) references passenger(idPassenger),
foreign key (flight_idFlight) references flight(idFlight)
);

create table staff_has_flight
( 
staff_idStaff int not null,
flight_idFlight int not null,
primary key (staff_idStaff, flight_idFlight),
foreign key (staff_idStaff) references flightCrew(idStaff),
foreign key (flight_idFlight) references flight(idFlight)
);

insert into flight 
values 
(1, '08:00:00', '10:30:00', 'Dubai'),
(2, '09:15:00', '12:00:00', 'London'),
(3, '11:45:00', '14:20:00', 'Paris'),
(4, '13:00:00', '16:10:00', 'New York'),
(5, '15:30:00', '18:00:00', 'Cairo'),
(6, '17:00:00', '20:15:00', 'Tokyo'),
(7, '18:45:00', '21:00:00', 'Istanbul'),
(8, '20:00:00', '23:30:00', 'Rome'),
(9, '21:15:00', '00:10:00', 'Berlin'),
(10, '23:00:00', '02:45:00', 'Madrid');

insert into passenger 
values 
(1, 'Ahmed', 'A', 'Ali', 'P12345', 'Saudi'),
(2, 'Sara', 'B', 'Khan', 'P22345', 'Pakistani'),
(3, 'John', 'C', 'Smith', 'P32345', 'American'),
(4, 'Lina', 'D', 'Hassan', 'P42345', 'Egyptian'),
(5, 'Omar', 'E', 'Farouk', 'P52345', 'Jordanian'),
(6, 'Maya', 'F', 'George', 'P62345', 'Lebanese'),
(7, 'Adam', 'G', 'Brown', 'P72345', 'British'),
(8, 'Noor', 'H', 'Saleh', 'P82345', 'Saudi'),
(9, 'Emma', 'I', 'Wilson', 'P92345', 'Canadian'),
(10, 'Yousef', 'J', 'Nasser', 'P10345', 'Kuwaiti');

insert into flightCrew
values 
(1, 'Khalid', 'A', 'Salem', 'Pilot', 9500),
(2, 'Rana', 'B', 'Ali', 'Co-Pilot', 8500),
(3, 'James', 'C', 'White', 'Flight Attendant', 4500),
(4, 'Nora', 'D', 'Hamed', 'Flight Attendant', 4300),
(5, 'Ali', 'E', 'Mahmoud', 'Engineer', 7000),
(6, 'Sophia', 'F', 'Clark', 'Pilot', 9800),
(7, 'Daniel', 'G', 'Lee', 'Security', 5000),
(8, 'Fatima', 'H', 'Saad', 'Flight Attendant', 4200),
(9, 'Michael', 'I', 'Scott', 'Manager', 8800),
(10, 'Huda', 'J', 'Yasin', 'Co-Pilot', 8200);

insert into tickets 
values 
(1, '12A', 'Economy', 350, 1, 1),
(2, '14B', 'Business', 900, 2, 1),
(3, '10C', 'Economy', 400, 3, 1),

(4, '1A', 'First', 1500, 4, 2),
(5, '22D', 'Economy', 300, 5, 2),

(6, '5B', 'Business', 850, 6, 3),
(7, '18F', 'Economy', 450, 7, 3),

(8, '2C', 'First', 1700, 8, 4),
(9, '9D', 'Business', 950, 9, 4),

(10, '15E', 'Economy', 380, 10, 5);

insert into baggage 
values 
(1, 20, 'Checked', 1, 1),
(2, 15, 'Loaded', 2, 1),
(3, 18, 'Checked', 3, 1),

(4, 25, 'Delayed', 4, 2),
(5, 12, 'Loaded', 5, 2),

(6, 22, 'Checked', 6, 3),
(7, 16, 'Lost', 7, 3),

(8, 19, 'Loaded', 8, 4),
(9, 14, 'Checked', 9, 4),

(10, 21, 'Loaded', 10, 5);

insert into staff_has_flight 
values 
(1, 1),
(2, 1),
(3, 1),

(4, 2),
(5, 2),

(6, 3),
(8, 3),

(7, 4),
(9, 4),

(10, 5);