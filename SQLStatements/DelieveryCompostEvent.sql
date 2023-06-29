-- Showing how much beer is delievered to an event, and how much compost is removed

SELECT E."EventID", E."EventName",
       SUM(C."Weight") AS "CompostWeight",
       SUM(D."Quantity") AS "BeerQuantity"
FROM "Events" E
LEFT JOIN "Compost" C ON E."EventID" = C."EventID"
LEFT JOIN "Deliveries" D ON E."EventID" = D."EventID"
GROUP BY E."EventID", E."EventName"
ORDER BY E."EventID";

