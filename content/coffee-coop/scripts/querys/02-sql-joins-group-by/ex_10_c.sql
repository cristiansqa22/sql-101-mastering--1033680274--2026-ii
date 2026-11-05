-- Exercise 10 - c
-- Total deliveries, total gross weight, and average cup score per farm on September 30, 2026

SELECT
    T3.farm_name AS farm,
    COUNT(T1.delivery_id) AS total_deliveries,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T2.cup_score), 2) AS avg_cup_score
FROM buy.deliveries AS T1
INNER JOIN buy.quality_analyses AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T1.farm_id = T3.farm_id
WHERE T1.delivery_id LIKE 'DLV-20260930%'
GROUP BY T3.farm_name
ORDER BY total_gross_kg DESC;

/*
       farm       | total_deliveries | total_gross_kg | avg_cup_score
------------------+------------------+----------------+---------------
 La MontaÃ±a       |                3 |        1005.29 |
 La Esperanza     |                5 |         940.64 |         81.34
 La Carolina      |                3 |         809.38 |
 Santa Clara      |                6 |         807.53 |         82.09
 El Guayabo       |                3 |         663.77 |         81.68
 La Gaitana       |                3 |         659.22 |         84.49
 La Aurora        |                3 |         655.79 |         82.59
 El Bosque        |                2 |         632.65 |         85.05
 Las Margaritas   |                3 |         628.84 |         84.52
 La Siberia       |                5 |         592.62 |         84.84
 Las Mercedes     |                4 |         561.35 |         83.16
 El Rosal         |                4 |         545.20 |         77.17
 San JosÃ©         |                3 |         495.86 |
 Bella Vista Alta |                2 |         458.22 |         81.88
 El EdÃ©n          |                3 |         446.16 |         82.31
 El Diamante      |                3 |         444.73 |         84.58
 El MesÃ³n         |                1 |         419.65 |
 La Selva         |                2 |         411.54 |         86.31
 Las Brisas       |                2 |         411.16 |         78.56
 La Isabela       |                3 |         410.13 |         81.69
 Santa BÃ¡rbara    |                2 |         407.01 |         81.74
 El Placer        |                3 |         402.35 |         83.37
 El Horizonte     |                3 |         388.04 |         86.01
 La Primavera     |                3 |         380.53 |
 Monte Alto       |                1 |         373.90 |
 El Danubio       |                2 |         362.31 |         84.74
 El Cafetal       |                2 |         354.11 |         80.52
 La CabaÃ±a        |                2 |         351.11 |         83.93
 San Luis         |                2 |         339.56 |
 La Loma          |                2 |         338.33 |
 La Florida       |                3 |         329.15 |         79.64
 El ParaÃ­so       |                1 |         322.31 |         81.43
 El Mirador       |                1 |         310.22 |
 Las OrquÃ­deas    |                2 |         308.90 |
 San Rafael       |                2 |         302.86 |
 El Guamo         |                2 |         298.30 |         84.24
 Tierra Linda     |                2 |         296.52 |         84.68
 El Caney         |                1 |         294.56 |         87.18
 La Palma         |                3 |         292.06 |         81.98
 La Soledad       |                1 |         285.51 |         87.04
 Cafetal Viejo    |                2 |         278.80 |         78.62
 El Nogal         |                2 |         278.67 |         84.54
 Villa Rosa       |                1 |         277.63 |
 San Antonio      |                2 |         260.36 |         80.96
 El ArrayÃ¡n       |                1 |         255.07 |         83.47
 La Argentina     |                1 |         253.15 |         84.33
 Los Laureles     |                1 |         243.35 |
 El Manantial     |                2 |         242.19 |
 El Triunfo       |                1 |         239.20 |         85.15
 Las Acacias      |                2 |         234.10 |
 Las Delicias     |                2 |         227.85 |         79.51
 Mi Ranchito      |                1 |         223.11 |         83.32
 Los Arrayanes    |                1 |         219.85 |
 La Cumbre        |                2 |         216.75 |         80.26
 La Cristalina    |                2 |         213.66 |         85.63
 La UniÃ³n         |                1 |         213.33 |
 Santa Elena      |                1 |         209.37 |         81.86
 El Mango         |                2 |         200.96 |         81.91
 El Recuerdo      |                1 |         197.04 |
 Los Naranjos     |                1 |         181.29 |
 El Recreo        |                2 |         173.30 |         82.41
 Altamira         |                1 |         162.41 |
 La Holanda       |                2 |         156.46 |
 El Retiro        |                1 |         136.77 |         82.93
 El Refugio       |                1 |         116.81 |
 El Oasis         |                1 |         113.93 |         82.00
 El Vergel        |                1 |         113.87 |
 El Cedro         |                1 |         112.33 |
 La Cascada       |                1 |         106.62 |
 Miraflores       |                1 |         103.07 |
 Buenavista       |                1 |          98.85 |         80.90
 La Floresta      |                1 |          89.95 |
 El Tesoro        |                1 |          86.13 |
 El Silencio      |                1 |          61.82 |         87.14
 El Encanto       |                1 |          59.16 |
 Los Guaduales    |                1 |          53.22 |         78.92
 La Gloria        |                1 |          48.15 |
(77 filas)
*/