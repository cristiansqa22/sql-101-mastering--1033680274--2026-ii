-- Exercise 10 - b
-- Farms with average cup score greater than or equal to 84.00

SELECT
    T3.farm_name AS farm,
    COUNT(T2.analysis_id) AS total_analyses,
    ROUND(AVG(T2.cup_score), 2) AS avg_cup_score
FROM buy.deliveries AS T1
INNER JOIN buy.quality_analyses AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T1.farm_id = T3.farm_id
GROUP BY T3.farm_name
HAVING AVG(T2.cup_score) >= 84.00
ORDER BY avg_cup_score DESC;

/*
 farm | total_analyses | avg_cup_score
------+----------------+---------------
(0 filas)
*/