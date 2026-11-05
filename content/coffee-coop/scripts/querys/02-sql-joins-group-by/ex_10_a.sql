-- Exercise 10 - a
-- Average cup score by coffee type for deliveries analyzed on September 30, 2026

SELECT
    T1.coffee_type AS coffee_type,
    COUNT(T2.analysis_id) AS total_analyses,
    ROUND(AVG(T2.cup_score), 2) AS avg_cup_score
FROM buy.deliveries AS T1
INNER JOIN buy.quality_analyses AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE T2.analyzed_at::date = '2026-09-30'
GROUP BY T1.coffee_type
ORDER BY avg_cup_score DESC;

/*
  coffee_type  | total_analyses | avg_cup_score
---------------+----------------+---------------
 wet_parchment |              6 |         84.49
 dry_parchment |            142 |         82.92
 cherry        |              3 |         80.26
(3 filas)
*/