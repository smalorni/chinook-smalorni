--(9)What are the respective total sales for each of those years?

SELECT Count(i.InvoiceId) as "Invoice Id",Sum(i.Total) as "2009 Count"
    FROM Invoice i 
        --WHERE i.InvoiceDate BETWEEN datetime("2009-01-01") AND datetime("2009-12-31");
        WHERE strftime("%Y", InvoiceDate) = "2009";

SELECT Count(i.InvoiceId) as "Invoice Id", SUM(i.Total) as "2011 Count"
    FROM Invoice i 
        --WHERE i. InvoiceDate BETWEEN datetime("2011-01-01") AND datetime("2011-12-31");
        WHERE strftime("%Y", InvoiceDate) = "2011";

