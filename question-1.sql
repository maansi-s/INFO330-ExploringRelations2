-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

SELECT customers.firstname, customers.lastname, customers.country, invoices.billingcountry, invoices.invoicedate, invoices.invoiceid
FROM customers
JOIN invoices
WHERE customers.country = 'Brazil';

