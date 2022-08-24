--(9)What are the respective total sales for each of those years?

SELECT Count(i.InvoiceId) as "Invoice Id",Sum(i.Total) as "Total Sales"
    FROM Invoice i 
        WHERE strftime("%Y", InvoiceDate) = "2009"
        OR strftime("%Y", InvoiceDate) = "2011";

