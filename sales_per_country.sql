--(22) Provide a query that shows the total sales per country.

SELECT
    BillingCountry AS "Billing Country",
    SUM(Total) AS "Total Sales"
        FROM Invoice
            GROUP BY BillingCountry;
