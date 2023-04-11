-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT tracks.name, artists.name, invoice_items.*
FROM invoice_items
LEFT JOIN artists, tracks, albums
WHERE albums.artistid = artists.artistid
and tracks.albumid = albums.albumid
and invoice_items.trackid = tracks.trackid;