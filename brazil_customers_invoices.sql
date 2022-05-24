SELECT 
c.FirstName || ' ' || c.LastName AS FullName,
i.InvoiceId,
i.BillingCountry,
i.InvoiceDate
FROM 
Customer c
JOIN Invoice as i
    ON i.CustomerId = c.CustomerId
