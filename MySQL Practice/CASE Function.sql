-- CASE FUNCTION

SELECT first_name, last_name,
CASE
  WHEN age <= 30 THEN 'Young'
  WHEN age BETWEEN 31 AND 50 THEN 'Old'
  WHEN age >= 50 THEN 'At Deth Door'
  END AS Age_Bracket
  FROM employee_demographics
  ORDER BY 1;
  
  -- CASE 
  -- < 50000 5%
  -- > 50000 7%
  -- FINANCE 10% bonus
  
  SELECT first_name, last_name, salary,
  CASE
     WHEN salary < 50000 THEN salary + (salary * .05)
     WHEN salary > 50000 THEN salary + (salary * .07)
     END AS New_salary,
     CASE
     WHEN dept_id = 6 THEN salary * 1.1
     END AS Bonus
     FROM employee_salary;
     
     
     
  