use airline;
SELECT *, flight_idFlight
FROM passenger, tickets, flight
WHERE flight_idFlight = idFlight and idFlight=1 and passenger_idPassenger=idPassenger;

SELECT SUM(price) AS Total_Revenue
FROM tickets, flight
WHERE flight_idFlight = idFlight and idFlight=4;

select fname, lname, salaryMonthly* 12 as Annual_Salary
from flightCrew;

select fname, lname, salaryMonthly*12 as Annual_salary
from flightCrew
ORDER BY Annual_salary DESC;

select fname, lname, salaryMonthly*12 as Annual_salary
from flightCrew
ORDER BY Annual_salary ASC;

SELECT AVG(weight) AS Average_Baggage_Weight
FROM baggage
WHERE flight_idFlight = 1;

SELECT *
FROM passenger
WHERE Lname like '_____';

SELECT class, AVG(price) AS Average_Price
FROM tickets
GROUP BY class
HAVING AVG(price) > 500
ORDER BY Average_Price DESC;

SELECT weight, passenger_idPassenger, flight_idFlight
FROM baggage
WHERE flight_idFlight = 1;
(
SELECT MIN(weight)
FROM baggage
WHERE flight_idFlight = 1
);

SELECT  status, Fname, Lname, idFlight, destination, departureT
FROM baggage
JOIN passenger
    ON passenger_idPassenger = idPassenger
JOIN flight
    ON flight_idFlight = idFlight;
  
  
SELECT MAX(Price) AS Max_Price
FROM tickets
WHERE flight_idFlight = 3;







