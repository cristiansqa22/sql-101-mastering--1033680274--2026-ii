-- Exercise 01 - b
-- Top 10 oldest farmers of municipality 54518 regarding membership at 2026-09-30 using AGE and DATE_PART

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    AGE(DATE '2026-09-30', T1.membership_date) AS membership_age,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.membership_date)) AS membership_years
FROM farm.farmers AS T1
INNER JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T2.municipality_code = '54518'
ORDER BY membership_date ASC
LIMIT 10;

/*
 document |    first_name    |     last_name     |     membership_age      | membership_years
----------+------------------+-------------------+-------------------------+------------------
    60102 | JuliÃ¡n Guillermo | Valencia NarvÃ¡ez  | 31 years 8 mons 3 days  |               31
   138643 | RocÃ­o Alba       | Ortega Serrano    | 31 years 2 mons 20 days |               31
   138643 | RocÃ­o Alba       | Ortega Serrano    | 31 years 2 mons 20 days |               31
   138643 | RocÃ­o Alba       | Ortega Serrano    | 31 years 2 mons 20 days |               31
    24490 | Wilson           | Parra Prada       | 31 years 2 mons 2 days  |               31
   149324 | Gloria           | GutiÃ©rrez Cardona | 30 years 11 mons 3 days |               30
    97970 | Viviana          | Duque Burbano     | 30 years 9 mons 5 days  |               30
    42248 | Laura            | Benavides Ãlvarez | 30 years 6 mons 25 days |               30
    46617 | Marleny          | Ãlvarez Correa    | 30 years 6 mons 10 days |               30
    23266 | Teresa Adriana   | Valencia Moreno   | 30 years 2 mons 7 days  |               30
(10 filas)
*/