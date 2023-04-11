-- Show the sales agent's full name and invoices associated with each sales agent.

SELECT DISTINCT employees.firstname, employees.lastname, invoices.*, employees.employeeid
FROM employees
LEFT JOIN invoices, customers
WHERE employees.title='Sales Support Agent';