--(4)Provide a query showing only the Employees who are "Sales Agents".

SELECT
    e.EmployeeId,
    e.FirstName ||" "|| e.LastName as "Full Name"
    FROM Employee e 
        WHERE e.Title = "Sales Support Agent";