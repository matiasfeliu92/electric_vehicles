SELECT * FROM used_vehicles_for_sales LIMIT 50

SELECT DISTINCT("Make") FROM used_vehicles_for_sales

SELECT DISTINCT("Body Type") FROM used_vehicles_for_sales

SELECT "Make", COUNT("Make") AS "Models quantity" FROM used_vehicles_for_sales
GROUP BY "Make"
ORDER BY "Models quantity" DESC

SELECT "Make", "Body Type", COUNT("Body Type") AS "Body types by makes" FROM used_vehicles_for_sales
GROUP BY "Make", "Body Type"
ORDER BY "Body types by makes" DESC

--TRAER TODOS LOS MODELOS SUV, CON MOTOR V6, ENTRE 2020 Y 2024
SELECT "Make", "Model", "Year", "Body Type", "Engine", ROUND(AVG("Price"), 2) as "Price" FROM used_vehicles_for_sales
WHERE "Engine" LIKE '%V6%' AND "Body Type" LIKE '%SUV%' AND "Year" BETWEEN 2020 AND 2024
GROUP BY "Make", "Model", "Year", "Body Type", "Engine", "Price"
ORDER BY "Year"