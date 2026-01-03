--create table Employee_Details (EmployeeID serial primary key, FirstName varchar not null, LastName varchar not null,
Email varchar not null, PhoneNumber bigint not null, HireDate date unique, Salary decimal not null,
DepartmentID int not null, IsActive bool not null, JobTitle varchar not null)

--insert into  Employee_Details (FirstName, LastName, Email, PhoneNumber, HireDate, Salary, DepartmentID, IsActive, 
JobTitle) values ('Palash', 'Yadav', 'palash.yadav@example.com' , 9850332211, '22/6/2015' , 45000, '1' , 'Yes' , 'Accountant')

--alter sequence public.employee_details_employeeid_seq restart with 2

--insert into  Employee_Details (FirstName, LastName, Email, PhoneNumber, HireDate, Salary, DepartmentID, IsActive, 
JobTitle) values ('Mohan', 'Jain', 'mohan.jadav@example.com' , 9850452211, '28/7/2022' , 55000, '2' , 'No' , 'UX Designer')

--insert into  Employee_Details (FirstName, LastName, Email, PhoneNumber, HireDate, Salary, DepartmentID, IsActive, 
JobTitle) values ('Tipendra', 'Gada', 'tipendra.gada@example.com' , 9850445611, '12/9/2022' , 78000, '3' , 'Yes' , 'AI Specialist')

--insert into  Employee_Details (FirstName, LastName, Email, PhoneNumber, HireDate, Salary, DepartmentID, IsActive, 
JobTitle) values ('Sonu', 'Bhide', 'sonuide@example.com' , 9803426811, '5/8/2022' , 89000, '4' , 'Yes' , 'Web Designer')

--insert into  Employee_Details (FirstName, LastName, Email, PhoneNumber, HireDate, Salary, DepartmentID, IsActive, 
JobTitle) values ('Dinesh', 'Sangram', 'dinesh.sangram@example.com' , 8956345681, '25/2/2021' , 60000, '5' , 'Yes' , 'Virtual Assistant')

--alter sequence public.employee_details_employeeid_seq restart with 1

--update Employee_Details set DepartmentId=0 where isactive = False

--update Employee_Details set salary=
case
when isactive = False then salary * 1.08
when DepartmentID=0 then salary * 1.08
when JobTitle in('HR Manager', 'Financial Analyst','Business Analyst', 'Data Analyst') then salary * 1.08
else salary
end

--select FirstName , LastName , salary from Employee_Details order by salary asc limit 19

--select * from Employee_Details where FirstName like 'A%' 

--delete from Employee_Details where EmployeeID between 1 and 5

--alter table Employee_Details rename to employee_database

--alter table employee_database rename FirstName to Name

--alter table employee_database rename LastName to Surname

--alter table employee_database add column state varchar default 'India'

--update employee_database set state ='USA' where isactive='False'

















