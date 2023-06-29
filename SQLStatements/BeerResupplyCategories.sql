-- Showing the popularity of the different categories of beers for resupply purposes

SELECT "BeerCategories"."CategoryName", SUM("Sales"."Quantity") AS "TotalSales"
FROM "Beers"
JOIN "BeerCategories" ON "Beers"."CategoryID" = "BeerCategories"."CategoryID"
JOIN "Sales" ON "Beers"."BeerID" = "Sales"."BeerID"
GROUP BY "BeerCategories"."CategoryName"
ORDER BY "TotalSales" DESC;
