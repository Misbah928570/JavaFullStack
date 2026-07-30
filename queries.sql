CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  did INTEGER NOT NULL,
  sal FLOAT,
  gender CHAR NOT NULL
);
CREATE TABLE DEPARTMENT (
  did INTEGER PRIMARY KEY,
  dname TEXT
);

INSERT INTO DEPARTMENT VALUES (1, 'Sales');
INSERT INTO DEPARTMENT VALUES (2, 'Accounting');
INSERT INTO DEPARTMENT VALUES (3, 'Finance');

alter table EMPLOYEE
add constraint fk_did
foreign key (did)
references DEPARTMENT(did);


INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales',1,18000,'M');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting',2,20000,'M');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales',1,15000,'F');
INSERT INTO EMPLOYEE VALUES (0005, 'Mia', 'Sales',1,20000,'F');
INSERT INTO EMPLOYEE VALUES (0004, 'David', 'Accounting',2,28000,'M');

select * from EMPLOYEE;
SELECT * FROM DEPARTMENT;

SELECT * FROM EMPLOYEE WHERE dept = 'Sales';

-- Like operator
SELECT * FROM EMPLOYEE
WHERE name LIKE 'D%';

SELECT * FROM EMPLOYEE
WHERE name 
LIKE '%la%';

-- aggregate func
SELECT COUNT(*) 
FROM EMPLOYEE
WHERE dept = 'Sales';

SELECT MIN(sal)
FROM EMPLOYEE;

SELECT MAX(sal)
FROM EMPLOYEE;

SELECT SUM(sal)
FROM EMPLOYEE;

-- GroupBy~ used to group rows that have the same values in a column and Having is used to filter groups created by groupby
-- where~ filters rows and having~ filters groups
select dept, count(*) as total_emps
from EMPLOYEE
group by dept;

select gender,count(*) as countOfMaleFemale
from EMPLOYEE
group by gender;

select dept,avg(sal) as averageSalFrmDepts
from EMPLOYEE
group by dept;

select dept,count(*) as deptMoreThn2Emps
from EMPLOYEE
group by dept
having deptMoreThn2Emps>2;

-- joins
select EMPLOYEE.name, DEPARTMENT.dname 
from EMPLOYEE INNER JOIN DEPARTMENT 
ON EMPLOYEE.did = DEPARTMENT.did;

SELECT E.name, D.dname
FROM EMPLOYEE AS E RIGHT JOIN DEPARTMENT AS D
ON E.did = D.did;

-- view~ virtual table created from one or more existing tables
create view emp_dep_name as
select EMPLOYEE.name, DEPARTMENT.dname 
from EMPLOYEE INNER JOIN DEPARTMENT 
ON EMPLOYEE.did = DEPARTMENT.did;

select * from emp_dep_name;

-- indexing~ used to speedup the searching(data retrieval from the table)