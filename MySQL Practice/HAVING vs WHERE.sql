-- HAVING vs WHERE

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(AGE) > 40
;

SELECT *
FROM employee_salary;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;

