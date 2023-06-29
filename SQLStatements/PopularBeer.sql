-- Showing beer popularity by quantity bought of each beer by ID. 

SELECT "Beers"."BeerID", "Beers"."BeerName", SUM("Sales"."Quantity") AS "TotalQuantity"
FROM "Beers"
JOIN "Sales" ON "Beers"."BeerID" = "Sales"."BeerID"
GROUP BY "Beers"."BeerID", "Beers"."BeerName"
ORDER BY "TotalQuantity" DESC;


