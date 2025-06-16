-- WINDOW Function

SELECT dem.first_name,dem.last_name,gender, AVG(salary) AS avg_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name,dem.last_name,gender;

SELECT dem.first_name,dem.last_name,gender, AVG(salary) OVER (PARTITION BY (gender)) AS avg_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;
    
    
    
  SELECT dem.first_name,dem.last_name,gender, salary,
  SUM(salary) OVER(PARTITION BY gender)
  FROM employee_demographics AS dem
  JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
      
	-- ROLLING TOTAL
    
    SELECT dem.first_name,dem.last_name,gender, salary, age,
  SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
  FROM employee_demographics AS dem
  JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
      
      
  SELECT dem.employee_id,dem.first_name,dem.last_name,gender, salary, age,
  ROW_NUMBER () OVER(PARTITION BY gender)
  FROM employee_demographics AS dem
  JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
      
  SELECT dem.employee_id,dem.first_name,dem.last_name,gender, salary, age,
  ROW_NUMBER () OVER(PARTITION BY gender ORDER BY salary DESC)
  FROM employee_demographics AS dem
  JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;  
      
      
      
      -- RANKING
      
  SELECT dem.employee_id,dem.first_name,dem.last_name,gender, salary, age,
  ROW_NUMBER () OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
  RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Rank_num
  FROM employee_demographics AS dem
  JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;  
      
      -- Dense Rank
      
      
      
  SELECT dem.employee_id,dem.first_name,dem.last_name,gender, salary, age,
  ROW_NUMBER () OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
  RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Rank_num,
  DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Dens_rank
  FROM employee_demographics AS dem
  JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;  
      
      