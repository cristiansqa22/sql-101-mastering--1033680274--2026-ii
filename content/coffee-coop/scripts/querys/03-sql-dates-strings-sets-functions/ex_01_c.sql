-- Exercise 01 - c
-- Result of NOW() and CURRENT_DATE in a single row without table

SELECT
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts             |   today
-------------------------------+------------
 2026-11-04 23:38:38.093753-05 | 2026-11-04
(1 fila)
*/