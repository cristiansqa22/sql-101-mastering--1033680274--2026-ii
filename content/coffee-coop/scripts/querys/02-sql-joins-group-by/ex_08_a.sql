-- Exercise 08 - a
-- Name of each department and its municipalities count ordered descending

SELECT
    T2.department_name AS department,
    COUNT(T1.municipality_code) AS municipalities_count
FROM geo.municipalities AS T1
INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
GROUP BY T2.department_name
ORDER BY municipalities_count DESC;

/*
                        department                        | municipalities_count
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 BoyacÃ¡                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 NariÃ±o                                                   |                   64
 Tolima                                                   |                   47
 BolÃ­var                                                  |                   46
 Cauca                                                    |                   42
 Valle Del Cauca                                          |                   42
 Norte De Santander                                       |                   40
 Huila                                                    |                   37
 Magdalena                                                |                   30
 CÃ³rdoba                                                  |                   30
 ChocÃ³                                                    |                   30
 Meta                                                     |                   29
 Caldas                                                   |                   27
 Sucre                                                    |                   26
 Cesar                                                    |                   25
 AtlÃ¡ntico                                                |                   23
 Casanare                                                 |                   19
 CaquetÃ¡                                                  |                   16
 La Guajira                                               |                   15
 Risaralda                                                |                   14
 Putumayo                                                 |                   13
 Quindio                                                  |                   12
 Arauca                                                   |                    7
 Vichada                                                  |                    4
 Guaviare                                                 |                    4
 VaupÃ©s                                                   |                    3
 Amazonas                                                 |                    2
 ArchipiÃ©lago De San AndrÃ©s, Providencia Y Santa Catalina |                    2
 GuainÃ­a                                                  |                    1
 BogotÃ¡, D.C.                                             |                    1
(33 filas)
*/