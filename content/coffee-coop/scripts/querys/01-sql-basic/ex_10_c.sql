SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    (T1.net_weight_kg * T1.price_per_kg_applied) AS check_gross_cop
FROM pay.settlements AS T1
WHERE T1.settled_at::date = '2026-09-30' AND T1.deductions_amount = 0;

/*

La columna calculada check_gross_cop 
coincide exactamente con gross_amount 
porque gross_amount es una columna 
GENERATED ALWAYS AS (net_weight_kg * price_per_kg_applied) 
STORED en la definición del esquema de 
PostgreSQL, esto garantiza que la base 
de datos calcule de forma automática 
y persistente la misma multiplicación
 matemática que evaluamos manualmente 
 en la consulta
*/