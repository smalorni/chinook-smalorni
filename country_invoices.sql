--(14) Provide a query that shows the total number of invoices per country.
SELECT COUNT(*) AS "Number of Invoices",
    i.BillingCountry
        FROM Invoice i
            GROUP BY i.BillingCountry