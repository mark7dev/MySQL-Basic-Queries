# [Example]
# 0 Write a query to display the full name (FIRST_NAME + LAST_NAME) for all employees whose first name is 'John'.

SELECT FIRST_NAME, LAST_NAME
FROM Employees
WHERE
  FIRST_NAME = 'John';


# 1  Write a query to select all record from employees
#    where last name in 'BLAKE', 'SCOTT', 'KING' or 'FORD'.
#     [HINT: look up the OR operator]

SELECT * 
FROM Employees 
WHERE 
  LAST_NAME = "Blake" 
OR 
  LAST_NAME = "Scott"
OR 
  LAST_NAME = "King"
OR 
  LAST_NAME = "Ford";


# 2 Write a query to display the full name (FIRST_NAME + LAST_NAME) and DEPARTMENT_ID
#   of all employees in departments 30 and 100 in ascending order.
#     [HINT: checkout the ORDER BY opeartor ]

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID 
FROM Employees 
WHERE 
  DEPARTMENT_ID = 30 
OR 
  DEPARTMENT_ID = 100
ORDER BY 
  DEPARTMENT_ID ASC;


# 3 Write a query to display the full name (FIRST_NAME + LAST_NAME) and SALARY
#   for all employees whose salary that is greater than $15,000.

SELECT FIRST_NAME, LAST_NAME, SALARY 
FROM Employees 
WHERE 
  SALARY > 15000;


# 4 Write a query to display the full name (FIRST_NAME + LAST_NAME) and SALARY
#   for all employees with salaries that are outside the range $10,000 through $15,000
#   and are in departments with an id of 30 or 100.
#     [HINT: research 'combining multiple conditions in mysql']

SELECT FIRST_NAME, LAST_NAME, SALARY 
FROM Employees 
WHERE
  (SALARY >10000 AND SALARY < 15000) AND (DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100);


# 5 Write a query to display the last name, job, and salary for all employees
#   whose job is that of a Programmer (IT_PROG) or a Shipping Clerk (SH_CLERK),
#   and whose salary is not equal to $4,500, $10,000 or $15,000.
#     [HINT: research 'combining multiple conditions in mysql']

SELECT LAST_NAME, JOB_ID, SALARY
FROM Employees
WHERE
  (JOB_ID = "IT_PROG" OR JOB_ID = "SH_CLERK") AND (SALARY != 4500 OR SALARY != 10000 OR SALARY != 15000);


# 6 Write a query to display the full name (FIRST_NAME + LAST_NAME)
#    and HIRE_DATE for all employees who were hired in after July, 1 1987.
#     [HINT: research 'comparing date in mysql']

SELECT FIRST_NAME, LAST_NAME, HIRE_DATE
FROM Employees
WHERE
  HIRE_DATE > "1987-07-01";


# 7 Write a query to display the unique values of
#   JOBS_ID available in the employees table.
#     [HINT: look up the DISTINCT operator]



# 8 Write a query to display the first name of all employees who have the letters
#   "b" or "c" in their first name.
#     [HINT: research LIKE operator]



# 9 Write a query to display the last name of employees whose names
#   have exactly 6 characters.
#     [HINT: look up CHARLENGTH operator  ]



# 10 Write a query to display the last name of employees having 'e'
#    as the third character.
#     [HINT: look up SUBSTRING operator ]
