-- Exercise 07 - c
-- Total farmers and farmers with registered email in municipality 54518

SELECT
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM farm.farmers AS T1
INNER JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T2.municipality_code = '54518';

/*
Explicación:
COUNT(*) cuenta todas las filas de asociados que 
cumplen con pertenecer al municipio, mientras que 
COUNT(T1.email) solo cuenta aquellas filas donde la
 columna email no es nula (ignora los valores NULL),
  lo que explica por qué los dos conteos son distintos.
*/

/*
 total_farmers | farmers_with_email
---------------+--------------------
           368 |                265
(1 fila)
*/