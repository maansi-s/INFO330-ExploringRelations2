-- Which sales agent made the most in sales in 2010?

SELECT employees.firstname, employees.lastname, max(invoices.total) as Total
FROM invoices
JOIN employees
WHERE invoices.invoicedate like '2010%'
and employees.title='Sales Support Agent';