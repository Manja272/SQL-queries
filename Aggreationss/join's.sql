-- 1. Retrieve employee names and their department names using INNER JOIN
--  SELECT e.employee_id, e.first_name, d.department_name
-- from hr.EMPLOYEES e
-- INNER JOIN hr.DEPARTMENTS d ON e.department_id = d.DEPARTMENT_ID;
-- //Display the employee-name and deaprtment name using inner join

-- 2. Retrieve all employees and their respective department names (including those without a department) using LEFT JOIN
-- SELECT e.employee_id, e.first_name, d.department_name
-- from hr.employees e
-- LEFT JOIN hr.DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;
--  //Display the employee-names and department-names using left join

-- 3. Retrieve all departments and employees (including departments without employees) using RIGHT JOIN
-- SELECT e.employee_id, e.first_name, d.department_name
-- from hr.EMPLOYEES e
-- RIGHT JOIN hr.DEPARTMENTS d ON e.department_id = d.department_id;
--  //display the employee-name and department-name using right outer join's

-- 4. Retrieve all employees and their department names using FULL OUTER JOIN
-- select e.employee_id, e.first_name, d.department_name
-- from hr.employees e
-- FULL join hr.departments d ON e.department_id = d.department_id;
-- Display the employee-name and deaprtment-nme using full outer join

-- 5. Retrieve employees who do not belong to any department using LEFT JOIN with NULL check
-- select e.employee_id, e.first_name
-- from hr.EMPLOYEES e
-- LEFT JOIN hr.DEPARTMENTS d ON e.department_id = d.department_id
-- where d.department_id is NULL;
--   //display the employee-name and department-name using left outer join with null value

-- 6. Retrieve departments that have no employees using RIGHT JOIN with NULL check
-- SELECT d.DEPARTMENT_NAME,  d.department_id
-- from hr.EMPLOYEES e
-- RIGHT JOIN hr.DEPARTMENTS d ON e.DEPARTMENT_ID = d.department_id
-- where e.EMPLOYEE_ID is NULL;
-- //Display the department name and department-id with null value of employee-id using right outer join

--  7. Retrieve employees along with their manager names using SELF JOIN
--  select e1.employee_id, e1.first_name employee_name, e2.first_name as manager_name
--  from hr.EMPLOYEES e1
--  join hr.EMPLOYEES e2
--   ON e1.manager_id = e2.EMPLOYEE_ID;

  -- 8. Retrieve employees along with their job title using INNER JOIN
--   select e1.employee_id, e1.first_name, j.job_title
--   from hr.EMPLOYEES e1
--   INNER JOIN hr.JOBS j
--   on e1.JOB_ID = j.JOB_ID;
-- //Display the inner join based employee-id and job-title

-- 9. Retrieve employees along with the location of their department using INNER JOIN
-- SELECT e.employee_id, e.first_name, d.department_id,l.city
-- from hr.EMPLOYEES e
-- INNER JOIN hr.DEPARTMENTS d
--     on d.DEPARTMENT_ID = e.DEPARTMENT_ID
-- inner JOIN hr.LOCATIONS l
--     ON d.location_id = l.location_id

-- 10. Retrieve employees and the projects they are assigned to using INNER JOIN
-- select e.employee_id, e.first_name, p.name
-- from hr.EMPLOYEES e
-- INNER JOIN projects.projects p
--         on e.EMPLOYEE_ID = p.id;
-- //Display the inner join assigned to be employee and project

-- 11. Retrieve employees who have not been assigned to any project using LEFT JOIN
-- select e.employee_id, e.first_name
-- from hr.EMPLOYEES e
-- LEFT JOIN  projects.projects p 
--         on e.employee_id = p.id;
-- //Display the employee name and id in each project using left join

-- 12. Retrieve project names along with the department handling them using INNER JOIN
-- SELECT p.name, d.department_name
-- from PROJECTS.projects p
-- INNER join hr.DEPARTMENTS d
--         ON  d.DEPARTMENT_ID = p.ID;
--   //Display the project name and department name using inner join

-- 17. Retrieve employees, their department names, and their assigned project names using multiple INNER JOINs
-- select  e.first_name, d.department_name, p.name
-- from hr.EMPLOYEES e
-- INNER JOIN hr.DEPARTMENTS d
--         ON e.department_id = d.DEPARTMENT_ID
-- inner JOIN PROJECTS.PROJECTS p
--         on p.id = e.employee_id;
-- //Display the multiple inner joins in all the employee id(like project, employee, department)

-- 18. Retrieve employees who have worked on more than one project using INNER JOIN and GROUP BY
-- SELECT e.employee_id, e.first_name, COUNT(p.id) as project_count
-- from hr.EMPLOYEES e
-- INNER JOIN PROJECTS.projects p
--         on p.id = e.EMPLOYEE_ID
-- GROUP by e.EMPLOYEE_ID ,  e.first_name
-- having COUNT(p.id) > 1;
-- //Display the inner joins who are all having done by more than one project

-- 20. Retrieve employees who earn more than their department’s average salary using INNER JOIN and a subquery
-- SELECT e.first_name, e.salary, e.employee_id
-- from hr.EMPLOYEES e
-- INNER JOIN hr.DEPARTMENTS d
--         on e.department_id = d.DEPARTMENT_ID;
-- where e.salary > (select avg(salary) from hr.EMPLOYEES where department_id = e.department_id);
-- //Display the average salary of each employee of  department using inner join

-- 21. Retrieve employees who have the same job role as another employee using SELF JOIN
-- SELECT e1.EMPLOYEE_ID, e1.first_name, e2.first_name as coworker, e1.JOB_ID
-- from HR.employees e1
-- INNER JOIN hr.EMPLOYEES e2
--        on  e1.JOB_ID = e2.JOB_ID  and e1.employee_id <> e2.employee_id;
-- // Display the self join in same employees in another job role

-- 22. Retrieve employees and their department names, but show "Not Assigned" if an employee has no department using LEFT JOIN and COALESCE
-- select e.employee_id, e.first_name, coalesce(d.department_name, 'not Assigned') as deaprtment_name
-- from hr.EMPLOYEES e
-- LEFT join hr.DEPARTMENTS d
--         on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
-- //Display the employees of each department  using left outer join

-- 23. Retrieve employees and their assigned projects, including employees who are not assigned to any project using FULL OUTER JOIN
-- select e.employee_id, e.first_name, p.name
-- from hr.EMPLOYEES e
-- FULL join PROJECTS.PROJECTS p
--         on e.EMPLOYEE_ID = p.id;
-- //Display the emeployee in eaach project using full outer join

-- 24. Retrieve employees who work in a city where their department is located using INNER JOIN
-- SELECT e.employee_id, e.first_name, l.city
-- from hr.EMPLOYEES e
-- INNER join hr.LOCATIONS l
--         on e.EMPLOYEE_ID = l.LOCATION_ID
-- inner join hr.departments d 
--         ON d.department_id = e.employee_id
--  //Display all the department of employees worked in other locations


