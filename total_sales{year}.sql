SELECT SUM(i.total) 
FROM INVOICE i
WHERE i.InvoiceDate LIKE "%2009%"

SELECT SUM(i.total) 
FROM INVOICE i
WHERE i.InvoiceDate LIKE "%2011%"