SELECT i.BillingCountry,
    COUNT(*)
FROM Invoice i
GROUP BY i.BillingCountry