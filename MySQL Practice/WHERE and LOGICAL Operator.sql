-- WHERE Clasue

 SELECT *
 FROM employee_salary
 WHERE first_name = 'Leslie';
 
 SELECT *
 FROM employee_salary
 WHERE salary >50000 ;
 
 SELECT *
 FROM employee_salary
 WHERE salary >=50000 ;
 
 SELECT *
 FROM employee_salary
 WHERE salary <=50000 ;
 
 SELECT *
 FROM employee_demographics
 WHERE gender = 'Female' ;
 
 SELECT *
 FROM employee_demographics
 WHERE gender != 'Female' ;
 
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01';
 
 -- AND OR NOT -- Logical Operators
 
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
 AND gender = 'male'
 ;
 
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
 OR gender = 'male'
 ;
 
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
 OR NOT gender = 'male'
 ;
 
 SELECT *
 FROM employee_demographics
 WHERE first_name = 'Leslie' AND age = 44;
 
 SELECT *
 FROM employee_demographics
 WHERE (first_name = 'Leslie' AND age = 44) or age > 55
 ;
 
 -- LIKE Statement --
 -- % and -- 
 SELECT *
 FROM employee_demographics
 WHERE first_name LIKE 'Jer%'
 ;
 
 SELECT *
 FROM employee_demographics
 WHERE first_name LIKE 'a___%'
 ;