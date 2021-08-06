Create table Employees (
Employee_ID integer,
First_Name varchar(100),
Last_Name varchar(100),
Salary numeric(7,2),
Commission_Rate numeric(4,2),
Manager varchar(100),
Cook varchar(100),
Cashier varchar(100),
Primary Key (Employee_ID)
);

Create table Trucks (
Truck_ID integer,
Truck_Color varchar(100),
Truck_Name varchar(100),
Street varchar(100),
City varchar(100),
State varchar(100),
ZipCode integer,
Phone_Number numeric(10),
Primary Key (Truck_ID)
);

Create table Trucks_Employees (
Truck_ID integer,
Employee_ID integer,
Primary Key (Truck_ID,Employee_ID)
);

Create table menu (
Item_ID varchar(100),
Item_Name varchar(100),
Quantity int,
Unit_Cost Numeric(3,2),
Primary Key(Item_ID)
);

Create table Truck_Menu (
Item_ID varchar(100),
Truck_ID varchar(100),
Primary Key(Item_ID,Truck_ID)
);

create table Orders (
Order_ID varchar(4),
OrderName text,
Item_ID varchar(3),
Primary key (OrderId)
);

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
values(11,"Jacob","Herro",50000,"0.25","Yes","No","No");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(12,"James","Tomkins",30000,0.15,"No","Yes","No");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(13,"Kylie","Kapoor",22000,0.05,"No","No","Yes");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(14,"Kareena","Jenner",32000,0.15,"No","Yes","No");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(15,"Rich","Wright",55000,0.25,"Yes","No","No");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(16,"Mike","Johnson",20000,0.05,"No","No","Yes");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(17,"Jonathan","Day",38000,0.15,"No","Yes","No");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(18,"Bob","Odenkirk",24000,0.05,"No","No","Yes");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(19,"Arturo","Almeida",24000,0.05,"No","No","Yes");

Insert into Employees (Employee_ID, First_Name, Last_Name, Salary, Commission_Rate, Manager, Cook , Cashier)
Values(20,"Maria","Gomez",21000,0.05,"No","No","Yes");

Select*from Employees; 

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(1,"Red","Jade","Mass Ave","Chicago","IL",47903,6308807571);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(2,"Blue","Simon","Stoney Creek","Boston","MA",35607,7659908763);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(3,"Black","Rachel","South St","New York","NY",45632,3234568900);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(4,"Red","Karen","Rider Dr","Chicago","IL",90876,6309897238);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(5,"Blue","Carter","Villa Park","Chicago","IL",90210,6306567433);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(6,"Blue","Kit","Old Trafford","New York","NY",85002,3239098790);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(7,"Blue","Corey","Etihad Dr","Boston","MA",54667,7652239084);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(8,"Black","Dez","Gold Park","New York","NY",32334,3236678909);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(9,"Red","Dwayne","Al Riwaz" ,"Chicago","IL",12345,6308874221);

Insert into Trucks (Truck_ID,Truck_Color,Truck_Name,Street,City,State,ZipCode,Phone_Number)
Values(10,"Black","Brody","Quoz Arena","Boston","MA",98765,7652321122);

select*from trucks

Insert into Trucks_Employees (Truck_ID,Employee_ID)
Values (1,11);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (2,12);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (3,13);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (5,15);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (6,16);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (7,17);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (8,18);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (9,19);
Insert into Trucks_Employees(Truck_ID,Employee_ID)
Values (10,20);

select* from Trucks_Employees;

Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Geor","George","Veg");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Kate","Kate","chi");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Rahu","Rahul","Veg");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Vika","Vikas","Mar");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Andy","Andy","chi");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Mark","Mark","Mar");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Bish","Bish","Van");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Bobb","Bobby","cho");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Isha","Ishaan","cho");
Insert into Orders (Order_ID,Order_Name,Item_ID)
Values ("Adit","Aditi","cla");

Select *  from Orders;

Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Veg","Veggie Burger",12,5.55);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("chi","Chicken Burger",15,7.85);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("shr","Shroom Burger",22,6.25);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Fri","Fries",26,3.49);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Cho","Chocolate Shake",55,4.99);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Mar","Margherita Pizza",102,12.99);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Van","Vanilla Shake",33,4.99);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("El","El Cubano",56,7.99);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Hot","Hot Dog",120,3.99);
Insert into Menu (Item_ID,Item_Name,Quantity,Unit_Cost)
Values ("Cla","VClassic Cheesy Stix",37,5.99);

Select * from Menu;

Insert into Truck_Menu (Truck_ID,Item_ID)
Values (1,"Veg");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (2,"Chi");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (3,"Shr");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (4,"Fri");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (5,"Cho");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (6,"Mar");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (7,"Van");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (8,"El");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (9,"Hot");
Insert into Truck_Menu (Truck_ID,Item_ID)
Values (10,"Cla");

Select * from Truck_Menu;





