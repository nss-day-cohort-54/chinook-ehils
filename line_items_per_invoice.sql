SELECT il.InvoiceId,
    COUNT(*)
FROM InvoiceLine il
GROUP BY il.InvoiceId
