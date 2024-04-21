create table Employee_Test
(
 Emp_ID int identity,
 Emp_Name varchar(55),
 Emp_Technology varchar(55),
 Emp_Sal decimal (10,2),
 Emp_Designation varchar(20)
)

--------------------------------
SELECT connection_id,session_id,client_net_address,auth_scheme
FROM sys.dm_exec_connections 
----------------------------------------


-------------------Insert Some Data-------------
Insert into Employee_Test values ('Amit','PHP',12000,'SE');
Insert into Employee_Test values ('Mohan','ASP.NET',15000,'TL');
Insert into Employee_Test values ('Avin','C#',14000,'SE');
Insert into Employee_Test values ('Manoj','JAVA',22000,'SSE');
Insert into Employee_Test values ('Riyaz','VB',18000,'TH');

--------------------------------------------------------
create VIEW vw_Employee_Test
AS
Select Emp_ID ,Emp_Name ,Emp_Designation
From Employee_Test 

-------------------------------------------

Select * from vw_Employee_Test 

------------------------------------------
 -- Insert data to view vw_Employee_Test
insert into vw_Employee_Test(Emp_Name, Emp_Designation) values ('Shailu','SSE')
-- Now see the affected view
Select * from vw_Employee_Test 

-----------------------Update Views
 -- Update data to view vw_Employee_Test
Update vw_Employee_Test set Emp_Name = 'Pawan' where Emp_ID = 6
-- Now see the affected view
Select * from vw_Employee_Test 

------------Delete Record ------------------
delete from vw_Employee_Test where Emp_ID = 6
-- Now see the affected view
Select * from vw_Employee_Test 