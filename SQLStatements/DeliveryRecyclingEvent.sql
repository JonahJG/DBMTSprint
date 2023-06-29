-- Showing how much beer is delievered to an event, and how much recycling is removed

SELECT E."EventID", E."EventName", 
       SUM(R."Weight") AS "RecyclingWeight", 
       SUM(D."Quantity") AS "BeerQuantity"
FROM "Events" E
JOIN "Recycling" R ON E."EventID" = R."EventID"
JOIN "Deliveries" D ON E."EventID" = D."EventID"
GROUP BY E."EventID", E."EventName"
ORDER BY E."EventID";
