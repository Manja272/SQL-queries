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

