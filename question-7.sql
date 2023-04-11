-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).

SELECT DISTINCT tracks.trackid, tracks.name, tracks.composer
FROM tracks JOIN invoice_items
WHERE invoice_items.trackid NOT IN (tracks.trackid)