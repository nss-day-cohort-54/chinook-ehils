SELECT Country,
TotalSales
FROM(
SELECT SUM(i.Total) AS TotalSales,
i.BillingCountry AS Country
FROM Invoice i
GROUP BY i.BillingCountry)