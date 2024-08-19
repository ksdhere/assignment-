/*1. Write SQL statement select to display customer Full Name in one column, their City and Amount of
sales. We need data only for customers whose mother has brown eyes.*/

select concat(c.FirstName,' ', c.lastName) as fullname,a.City,sum(s.amount) as SalesAmount
from Customer c
join sales s on c.id=s.CustomerID 
join Address a on a.id=s.CityID 
where c.MotherIDNumber is not null and c.EyeColor='Brown'
group by fullname,a.city; 

/* 2. Write SQL statement select to display First Name and Last Name of users which ordered 3 and more
courses. Use tables from below.*/

select u.FirstName, u.LastName from users u
join orders o on u.id=o.UserID
join courses c on c.id=o.CourseID
group by u.FirstName,u.LastName 
having count(o.CourseID)>=3 ;

/* 3. What will be the result of the select below

SELECT
SUM(p.Amount) AS Amount
FROM
Payments p
INNER JOIN Clients c ON p.ClientId = c.Id
INNER JOIN Address a ON c.Id = a.ClientId
WHERE
c.Name LIKE '%iro'*/

Result:
Column name: Amount
1st row: 500 


