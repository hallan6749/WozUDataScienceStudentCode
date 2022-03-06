#Part 1
Create View initialCustomers as
select first_name, last_name, email
from customer
where customer_id < 100; 

#Part2
Create Table ProductList (
ProductID Integer primary key auto_increment,
ProductName VARCHAR(50) NOT NULL,
Price numeric(4,2) NOT NULL, 
DateAdded DATETIME DEFAULT current_timestamp, 
EmployeeSupportId Integer NOT NULL);