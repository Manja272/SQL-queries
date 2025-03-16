-- 1. Find the total number of employees in each department.
-- Counts employees for each department using GROUP BY.
-- SELECT department_id, count(*) as total_emp
-- from hr.EMPLOYEES
-- group BY DEPARTMENT_ID;
--  //Display the number of eemployess in each department

-- 2. Calculate the average salary in each department.
-- Computes the average salary for each department
-- select department_id, avg(salary) as avg_salary
-- FROM hr.EMPLOYEES
-- group by DEPARTMENT_ID;
--   //Display the average the salary each employee in ever deaprtment

-- 3. Find the department with the highest total salary.
-- Summarizes total salaries per department and selects the highest one.
-- SELECT department_id, sum(salary) as sum_salary
-- from hr.EMPLOYEES
-- group BY DEPARTMENT_ID
-- ORDER BY sum_salary DESC;
-- // Display the sum of salary in each deaprtment of employee and display the highest salary

-- 4. Determine the highest and lowest salaries for each job role.
-- Finds the highest and lowest salary within each job role.
-- SELECT job_id, MAX(salary) as Max_salary, min(salary) as min_salary
-- from hr.EMPLOYEES
-- GROUP by JOB_ID;
--  //Display the minimum and maximum value of each department of employee

-- 5. Find the number of employees hired in each year.
-- Extracts year from hire_date and counts employees hired per year.
-- select EXTRACT(year from hire_date) as hire_year, count(*) as total_emp
-- from hr.EMPLOYEES
-- group by EXTRACT(year FROM hire_date)
-- ORDER BY hire_year;
-- diaplay the total number of employees in every year

-- 6. Assign a rank to employees based on their salary within each department.
-- Uses RANK() to assign ranks based on salary in each department.
-- SELECT department_id, employee_id,salary,
-- RANK() OVER (PARTITION by department_id ORDER by salary DESC) as salary_rank
-- from hr.EMPLOYEES;
-- display the employee of each department and salary and partictions in every one using rank

-- 7. Find the top 3 highest-paid employees in each department.
-- Uses RANK() to rank employees based on salary and filters top 3.
-- SELECT department_id, employee_id, salary
-- FROM(
--     select department_id, employee_id, salary,
--         RANK() OVER (PARTITION BY department_id ORDER BY salary desc) as salary_rank
--         FROM hr.employees
-- ) WHERE salary_rank <=3;
-- //Display the employee of each deaprtment, ssalary to be partictions using in rank

-- 8. Identify the second highest salary in each department using DENSE_RANK().
-- Uses DENSE_RANK() to identify employees with the second-highest salary per department.
-- SELECT department_id, employee_id, salary
--  from (
--         select department_id, employee_id, salary,
--         DENSE_RANK() over (PARTITION by department_id ORDER by salary DESC ) as salary_desne_rank
--         FROM hr.employees
--  )  where salary_desne_rank < 5 ;
-- //Display the employees in each department and salary that will partiction using dense_rank

-- 9. Compute the cumulative total salary of employees ordered by hire date.
-- Uses SUM() OVER() to create a running total of salaries.
-- SELECT employee_id, hire_date, salary,
--  SUM(salary) over( order by hire_date) as cumulative_salary
--   from hr.employees;  
-- //Display the total saalry of employee to be partition by cumulation_saalry

-- 10. Assign a row number to each employee in each department.
-- Uses ROW_NUMBER() to assign a unique row number per department.
-- SELECT department_id, salary, employee_id,
--     ROW_NUMBER() OVER ( ORDER by salary) as salary_raw_number
--     from hr.EMPLOYEES;
-- display the employees in each department and salary using raw_number

-- 11. Find the salary difference between each employee and the next highest-paid employee.
-- Uses LEAD() to compare an employee's salary with the next highest.
-- select salary, employee_id,
-- LEAD(salary) over( ORDER by salary desc) as lead_salary
-- from hr.EMPLOYEES
-- //Display the salary of the each employee and using lead.

-- 13. Identify employees whose salaries increased over time.
-- Uses LAG() to compare an employee's current and previous salaries.
-- SELECT employee_id, hire_date, salary,
--     LAG(salary) over( PARTITION by employee_id order by hire_date) as prev_salary,
--     case when salary > LAG(salary) over(partition by employee_id ORDER by hire_date)
--             THEN 'Increased else' ELSE ' Decreased' END as salary_trend
--     FROM hr.EMPLOYEES;
-- // Display the number of salary will be increase by the hire_date

-- 14. Find the average salary of employees who joined in each year.
-- Computes average salary grouped by year of hire.
-- SELECT EXTRACT(year from hire_date) as hire_year, avg(salary) as avg_salary
-- FROM hr.EMPLOYEES
-- GROUP by EXTRACT(year from HIRE_DATE)
-- ORDER by hire_year;
--  //Disply the salary of employees in every year to extractthe salary

-- 15. Count the number of employees in each job role.
-- Counts employees for each job role using GROUP BY.
-- select job_id, COUNT(*) as total_emp
-- FROM hr.EMPLOYEES
-- group by job_id;
--  //Display the number of job_names in every employee

-- 16. Find the total salary expenditure for each manager's team.
-- Sums salaries of employees under each manager.
-- select manager_id, sum(salary) as total_team_salary
-- from hr.EMPLOYEES
-- group by manager_id;
--  // DIplsy the sum of slary of each manager in eamployee

-- 17. Find the highest-paid employee in each department.
-- Uses RANK() to find the highest-paid employee in each department.
-- select department_id, employee_id, salary
--  from (
--         select department_id, salary,employee_id,
--           RANK() over(PARTITION by department_id order by salary desc) as salary_rank
--           from hr.employees
--  )where salary_rank = 1;
--   //Diplay the highest salary of department using rank

-- 18. Calculate the running total of salaries for employees hired in each department.
-- Uses SUM() OVER() to compute cumulative salary totals.
-- SELECT department_id, salary, employee_id,
-- sum(salary) over( PARTITION by department_id ORDER by HIRE_DATE) as running_salary
-- from hr.EMPLOYEES;
--   //Display the slary of each depatment in running salary

-- 19. Find the employees who earn above the average salary of their department.
-- Uses a subquery to filter employees earning above department average.
-- select employee_id, department_id, salary
--  from hr.EMPLOYEES e
--  where salary > (select avg(salary) from hr.employees where DEPARTMENT_ID = e.DEPARTMENT_ID);
-- / Display the slaary greaterthan then the average salary

-- 20. Rank employees within their department based on experience.
-- Uses RANK() to order employees by hire date per department.
-- SELECT employee_id, department_id, hire_date,
--      rank() over(PARTITION by department_id ORDER by hire_date desc) as emp_rank
--      from hr.employees;
--  //Display the hire_date of employee in each department using rank(())


 