-- Find the name of each item and the quantity in stock for each item that the customer Mark had ordered.
Select menu.Item_Name, menu.quality
from menu
inner join orders
on menu.Item_ID = Orders.Item_ID
Where orders.order_Name = "Mark";


-- Find the total amount of revenue generated on burger orders. Round the final result by 2 decimal places.
Select round(sum(menu.Unit_Cost),2) as BurgerRevenue
from menu
inner join orders
on menu.Item_ID = Orders.Item_ID
Where menu.Item_Name like "%Burger";


-- Join the employees and Trucks_employees and order them in ascending order from First_Name 
Select employees.First_Name,employees.Last_Name,employees.Manager,employees.Cook,employees.Cashier
from employees
inner join Trucks_Employees
on employees.Employee_ID = Trucks_Employees.Employee_ID
order by First_Name asc;


-- Find the truck names, color, phone numbers, and full names of the employees who work in Chicago.
Select employees.First_Name,employees.Last_Name,Trucks.Truck_Name,Trucks.Truck_Color,Trucks.Phone_Number
from employees
inner join Trucks_Employees
on employees.Employee_ID = Trucks_Employees.Employee_ID
inner join trucks
on trucks.truck_Id = trucks_employees.truck_ID
Where trucks.city = "Chicago";


-- Using the information provided in the tables, find the minimum and salaries for each of the positions as well as the respective commision rates.
Select min(salary) as MinSalary, max(Salary) as MaxSalary, Commission_Rate as CommissionRate
from employees
group by Manager = "Yes" , Cook = "Yes" , Cashier = "Yes";


-- Find out if there is a truck in Chicago that sells the Veggie Burger, along with the price of the Veggie Burger, the Truck Name, and the Truck Color.
Select menu.Item_Name, menu.Unit_cost, trucks.Truck_Name, trucks.Truck_Color
from menu
inner join truck_menu
on menu.Item_ID = truck_menu.Item_ID
inner join trucks
on trucks.truck_Id = trucks_menu.truck_ID
Where trucks.city = "Chicago"
and menu.Item_Id = "Veg";


-- Find the name and quantity of each item sold and the name of the truck that sold the item. Sort the items in ascending order.
Select menu.Item_name as ItemName, Count(Orders.Item_ID) as QtySold, trucks.Truck_Name as TruckName
from menu
inner join orders
on menu.Item_ID = Orders.Item_ID
inner join truck_menu
on orders.Item_ID = truck_menu.Item_ID
inner join trucks
on truck_menu.Truck_ID = trucks.Truck_ID
group by menu.Item_Name
order by count(orders.Item_ID) desc;


-- Join the Trucks and Trucks_Employees 
Select Trucks.Truck_color,Trucks.Truck_Name,Trucks.Street,Trucks.City,Trucks.State,Trucks.ZipCode,Trucks.Phone_Number
from Trucks
inner join Trucks_Employees
on Trucks.Truck_ID = Trucks_Employees.Truck_ID;


-- Find only the First Name and Last Name of the managers of the company.
Select First_Name,Last_Name,Manager, count(Manager)
from Employees
where Manager ="Yes"
group by First_Name,Last_Name,manager;


-- Find only the First Name and Last Name of the cook of the company.
Select First_Name,Last_Name,Cook
from Employees
where Cook ="Yes";


-- Find only the First Name and Last Name of the cashiers of the company.
Select First_Name,Last_Name,Cashier
from Employees
where Cashier ="Yes";


-- From the employees table arrange the table in descending order by salary and group them by employeeID
Select *
from Employees
Group by Employee_id
order by salary desc;


-- From the Trucks table arrange the table in ascending order by zipcode and group them by truckID
Select * 
from Trucks
Group by Truck_id
order by ZipCode asc;


-- Update the truck with a Truck ID of 1 to zip code of 60611.
Update Trucks
set Zipcode = 60611
where Truck_ID = 1;


-- Delete the employees with a salary of $21,000.
Delete from employees
Where Salary = 21000.00;


-- Find out the total salary given to all the employees by the company.
Select sum(salary) as TotalSalary
from employees;


-- Drop the associative entity between trucks and employees.
Drop Table trucks_employees;

