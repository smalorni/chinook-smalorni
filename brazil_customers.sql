--(2)Provide a query only showing the Customers from Brazil.

 SELECT
    c.FirstName ||" "|| c.LastName as "Full Name",
    c.CustomerId,
    c.Country
        FROM Customer c
            WHERE c.Country = "Brazil";