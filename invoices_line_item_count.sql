SELECT i.InvoiceId,
COUNT(*)
FROM InvoiceLine il 
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId