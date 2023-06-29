-- Showing the amount of reward points for each customer

SELECT C."CustomerID", C."FirstName", C."LastName", R."Points" AS "RewardsPoints"
FROM "Customers" C
LEFT JOIN "Rewards" R ON C."CustomerID" = R."CustomerID";
