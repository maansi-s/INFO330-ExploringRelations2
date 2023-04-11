-- Find tracks (id, name and composer) that are part of a line in an invoice.

SELECT DISTINCT tracks.trackid, tracks.name, tracks.composer
FROM tracks
INNER JOIN invoices, invoice_items
WHERE invoice_items.trackid = tracks.trackid;