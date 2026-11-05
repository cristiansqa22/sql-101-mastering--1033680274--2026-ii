-- Exercise 09 - b
-- Farms with more than 2 deliveries on September 30, 2026 ordered by total weight descending

SELECT
    T2.farm_name AS farm,
    COUNT(T1.delivery_id) AS total_deliveries,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
WHERE T1.delivery_id LIKE 'DLV-20260930%'
GROUP BY T2.farm_name
HAVING COUNT(T1.delivery_id) > 2
ORDER BY total_gross_kg DESC;

/*
       farm       | total_deliveries | total_gross_kg
------------------+------------------+----------------
 El Refugio       |                8 |        1590.54
 La Esperanza     |                6 |        1415.77
 El Rosal         |                7 |        1297.18
 La MontaÃ±a       |                5 |        1290.16
 La Gaitana       |                5 |        1247.31
 La Carolina      |                5 |        1221.54
 La Isabela       |                8 |        1206.40
 La Primavera     |                6 |        1191.54
 El Oasis         |                4 |        1158.37
 Cafetal Viejo    |                6 |        1132.90
 Bella Vista Alta |                7 |        1109.38
 Santa BÃ¡rbara    |                5 |        1103.36
 Las Brisas       |                5 |        1074.71
 La Florida       |                6 |        1073.69
 El Guayabo       |                5 |         963.45
 El Horizonte     |                6 |         912.68
 El Danubio       |                5 |         911.03
 San JosÃ©         |                5 |         897.23
 Las Margaritas   |                5 |         840.86
 Santa Clara      |                6 |         807.53
 La Selva         |                4 |         787.38
 El Bosque        |                3 |         779.64
 El Recuerdo      |                3 |         774.57
 El Placer        |                5 |         773.78
 La Estrella      |                3 |         747.76
 Las Mercedes     |                5 |         735.41
 San Rafael       |                4 |         732.06
 El EdÃ©n          |                5 |         720.52
 El Caney         |                3 |         672.60
 La Aurora        |                3 |         655.79
 La Gloria        |                4 |         652.79
 Altamira         |                4 |         631.78
 La Floresta      |                5 |         619.67
 La CabaÃ±a        |                4 |         611.36
 La Siberia       |                5 |         592.62
 El Cafetal       |                4 |         588.17
 Los Guaduales    |                3 |         546.95
 Los Arrayanes    |                3 |         536.86
 La Soledad       |                4 |         514.37
 La Loma          |                3 |         511.79
 La UniÃ³n         |                3 |         498.84
 La Cristalina    |                4 |         488.84
 Buenavista       |                4 |         455.65
 El Diamante      |                3 |         444.73
 El Encanto       |                3 |         441.21
 El Guamo         |                3 |         423.25
 El Manantial     |                3 |         418.97
 El Nogal         |                3 |         398.01
 Las Acacias      |                3 |         372.00
 El Mango         |                3 |         365.87
 La Ceiba         |                3 |         362.85
 La Palma         |                3 |         292.06
 El Recreo        |                3 |         286.77
 Las Delicias     |                3 |         284.65
 La Holanda       |                3 |         252.19
 El Cedro         |                3 |         198.35
(56 filas)
*/