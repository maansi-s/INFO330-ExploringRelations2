-- What was the most purchased track of 2013?

SELECT tracks.name, count(tracks.name) as TotalCount
FROM invoices
JOIN tracks
WHERE invoices.invoicedate like '2013%'
GROUP BY tracks.name
ORDER BY count(*) DESC;