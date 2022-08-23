--(1) Provide a query showing Customers who are not in the US. Includes customer's full name, id, country.

SELECT
    c.FirstName ||" "|| c.LastName as "Full Name",
    c.CustomerId,
    c.Country
    FROM Customer c
        WHERE c.Country != "USA";


