-- Exercise 09 - c
-- Coffee types with average gross weight per delivery greater than 100 kg on September 30, 2026

SELECT
    T1.coffee_type AS coffee_type,
    COUNT(T1.delivery_id) AS deliveries_count,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930%'
GROUP BY T1.coffee_type
HAVING AVG(T1.gross_weight_kg) > 100
ORDER BY avg_gross_kg DESC;

/*
  coffee_type  | deliveries_count | avg_gross_kg
---------------+------------------+--------------
 cherry        |               10 |       205.32
 dry_parchment |              278 |       173.55
 wet_parchment |               12 |       157.60
(3 filas)
*/