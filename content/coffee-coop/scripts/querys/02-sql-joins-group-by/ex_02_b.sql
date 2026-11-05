-- Exercise 02 - b
-- Farmers who do not have any registered farm

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T2.farm_id IS NULL;

/*
 document | first_name | last_name | farm
----------+------------+-----------+------
(0 filas)
*/