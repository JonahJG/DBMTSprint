-- Showing the total sales for each employee to track sales goals for rewards

SELECT "SalesTeam"."EmployeeID", "SalesTeam"."FirstName", "SalesTeam"."LastName", SUM("Sales"."Quantity") AS "TotalSales"
FROM "SalesTeam"
JOIN "Sales" ON "SalesTeam"."EmployeeID" = "Sales"."EmployeeID"
GROUP BY "SalesTeam"."EmployeeID", "SalesTeam"."FirstName", "SalesTeam"."LastName"
ORDER BY "TotalSales" DESC;
