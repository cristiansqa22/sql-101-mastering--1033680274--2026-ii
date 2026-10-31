SELECT
    municipality_code AS municipality_code,
    municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.municipality_name ILIKE '%Pamplona%';

/*
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)
*/