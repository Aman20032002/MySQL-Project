-- Limit & Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3, 1;

-- Aliasiing

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age)  > 40;

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age  > 40;



