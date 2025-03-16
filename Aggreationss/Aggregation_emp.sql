-- select * from hr.EMPLOYEES;
-- //display the all employee tables

-- select department_id, COUNT(*) as total_emp
-- from hr.EMPLOYEES
-- group by DEPARTMENT_ID;
--   //display the All number of employee is department

-- SELECT DEPARTMENT_ID, avg(salary) as total_salary
-- from hr.EMPLOYEES
-- group by DEPARTMENT_ID;
--  //Display the average salary of employees in department

-- SELECT DEPARTMENT_ID, MAX(salary) as maximum_salary, MIN(salary) as minimum_salary
-- from hr.EMPLOYEES
-- group by DEPARTMENT_ID;
--   Display the both minimum and maximum salaries of employees in department

-- SELECT department_id, SUM(salary) as total_salary
-- from hr.EMPLOYEES
-- group by DEPARTMENT_ID;
--  //Display the all sum 0f salary employees in department

-- SELECT * from hr.EMPLOYEES;

-- SELECT job_id, count(*) as total_emp
-- from hr.EMPLOYEES
-- group by JOB_ID;
--   ///display the total number of employess in job_id

-- SELECT job_id, avg(salary) as avg_salary
-- from hr.EMPLOYEES
-- group BY job_id;
--   Display the average salary of each job role in employee table

-- select JOB_ID, MAX(salary) as maximum_salary
-- FROM hr.EMPLOYEES
-- group by job_id
--    //Display the maximum salary for each job in employee

-- select job_id, MIN(salary) as minimum_salary
-- from hr.EMPLOYEES
-- group by JOB_ID;
-- //Disply the minimum salary for each job role in employee

-- select job_id, sum(salary) as sum_salary
-- from hr.employees
-- group by job_id
-- // Display the total sum of salary for each jobs in employee

-- select extract(year from hire_date) as hire_year, count(*) as total_employees
-- from hr.employees
-- group by EXTRACT(year from HIRE_DATE)
-- ORDER by hire_year;
-- //Display the employee to be extract only hire_year

-- SELECT d.location_id, SUM(e.salary) as total_salary
-- FROM hr.EMPLOYEES e
-- JOIN hr.DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
-- group  by d.LOCATION_ID;
--   //Dsiplay the total salary of employee and location in department to combined using join's

-- select manager_id, count(*) as team_size
-- from hr.EMPLOYEES
-- where MANAGER_ID is NOT null
-- group by MANAGER_ID
--  //Display the total number managers in each team employees without null value

-- SELECT MANAGER_ID, MAX(salary) as maximum_salary
-- FROM hr.EMPLOYEES
-- where MANAGER_ID IS NOT NULL
-- GROUP by MANAGER_ID;
--  //Display the maximum salary of each manager in employee without null valuee

-- SELECT manager_id, avg(salary) as avg_salary
-- from hr.EMPLOYEES
-- where MANAGER_ID IS NOT NULL
-- GROUP by MANAGER_ID;
--   //Display the average salary of each manager in employee without null value

-- select EXTRACT(MONTH from hire_date) as hire_month, COUNT(*) as total_hire
-- from hr.EMPLOYEES
-- group by EXTRACT(month from HIRE_DATE)
-- ORDER by hire_month;
-- //Display the total number employess will  be hired in each month

-- select department_id, SUM(salary) as sum_salary
-- from hr.EMPLOYEES
-- group by DEPARTMENT_ID
-- ORDER by sum_salary DESC;
-- //Display the sum od salary in each department and display the decsending order

-- SELECT job_id, avg(salary) as avg_salary
-- from hr.EMPLOYEES
-- group by JOB_ID
-- ORDER by avg_salary DESC;
-- //Display the average salary of job role and display the average _salary in decsending order

-- SELECT l.city, count(*) as total_employees
-- from hr.EMPLOYEES e
-- join hr.DEPARTMENTS d ON e.EMPLOYEE_ID = d.department_id
-- JOIN hr.LOCATIONS l ON d.DEPARTMENT_ID = l.LOCATION_ID
-- group  by l.CITY;
--  //Display the all th number employees in each city(joins in employee, DEPARTMENT AND LOCATION)

-- select department_id, count(*) as employees_with_commission
-- from hr.EMPLOYEES
-- where COMMISSION_PCT IS NOT NULL
-- group by DEPARTMENT_ID;
-- //Display the all the number employees in each department with each commission of employee

-- select department_id, sum(salary) as sum_salary
-- from hr.EMPLOYEES
-- where COMMISSION_PCT is NOT NULL
-- GROUP by DEPARTMENT_ID;
--   Display the sum of salary in each department with employees with commission