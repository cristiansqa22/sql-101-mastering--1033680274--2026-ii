SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at::date = '2026-09-30' AND T1.moisture_pct NOT BETWEEN 10 AND 12;

/*
      analysis      |      delivery       | moisture_pct |    analyst_name    |                          observations
--------------------+---------------------+--------------+--------------------+-----------------------------------------------------------------
 QA-20260930-000026 | DLV-20260930-000005 |        12.19 | Wilson Galvis      |
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 | Adriana Losada     |
 QA-20260930-000085 | DLV-20260930-000161 |        12.03 | Carlos Ospina      | Muestra limpia, color homogÃ©neo.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 | GermÃ¡n PeÃ±a        | Muestra tomada por duplicado.
 QA-20260930-000093 | DLV-20260930-000178 |        12.11 | NicolÃ¡s Serrano    | Humedad en el lÃ­mite superior, se recomienda mejorar el secado.
 QA-20260930-000121 | DLV-20260930-000200 |        12.38 | Guillermo Acevedo  |
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 | Carolina RodrÃ­guez | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 | Reinaldo BermÃºdez  | CafÃ© sobresecado, grano quebradizo.
 QA-20260930-000094 | DLV-20260930-000227 |        12.43 | Ruth PolanÃ­a       |
 QA-20260930-000134 | DLV-20260930-000236 |        12.48 | Gloria Restrepo    |
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 | AnÃ­bal PabÃ³n       | Exceso de impurezas y pasilla.
 QA-20260930-000105 | DLV-20260930-000260 |        12.01 | Daniel Betancur    |
 QA-20260930-000109 | DLV-20260930-000272 |        12.18 | Jaime Ortega       |
 QA-20260930-000145 | DLV-20260930-000277 |        12.27 | Reinaldo BermÃºdez  | Muestra tomada por duplicado.
 QA-20260930-000149 | DLV-20260930-000286 |        12.28 | GermÃ¡n PeÃ±a        |
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 | Alejandra Torres   | CafÃ© de buena presentaciÃ³n, sin olores extraÃ±os.
 QA-20260930-000012 | DLV-20260930-000057 |        12.16 | Guillermo Acevedo  |
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 | Santiago Rojas     | CafÃ© con humedad alta, requiere mÃ¡s secado.
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 | GermÃ¡n PeÃ±a        |
 QA-20260930-000078 | DLV-20260930-000093 |        12.01 | Heriberto Galvis   |
 QA-20260930-000045 | DLV-20260930-000104 |        12.11 | Ruth PolanÃ­a       |
 QA-20260930-000069 | DLV-20260930-000109 |        15.30 | EfraÃ­n Betancur    |
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 | Sara SÃ¡nchez       |
 QA-20260930-000092 | DLV-20260930-000113 |        12.39 | Wilson Galvis      |
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 | Santiago Rojas     | Muestra tomada por duplicado.
 QA-20260930-000076 | DLV-20260930-000116 |        12.08 | GermÃ¡n GonzÃ¡lez    |
 QA-20260930-000095 | DLV-20260930-000118 |        12.32 | Laura Henao        |
 QA-20260930-000056 | DLV-20260930-000120 |        12.40 | Alejandra Torres   |
 QA-20260930-000099 | DLV-20260930-000131 |        12.15 | Gustavo Serrano    |
 QA-20260930-000077 | DLV-20260930-000144 |        12.25 | Emilio PolanÃ­a     |
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000052 | DLV-20260930-000149 |        12.31 | EfraÃ­n Betancur    | Grano uniforme, buen secado.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 | NicolÃ¡s Serrano    | CafÃ© con humedad alta, requiere mÃ¡s secado.
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 | Natalia Trujillo   |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 | Sara SÃ¡nchez       |
 QA-20260930-000013 | DLV-20260930-000038 |        12.28 | Adriana Losada     |
 QA-20260930-000005 | DLV-20260930-000040 |        12.22 | IvÃ¡n Castro        |
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 | GermÃ¡n GonzÃ¡lez    | Caficultor solicita contramuestra.
 QA-20260930-000144 | DLV-20260930-000289 |        12.28 | AncÃ­zar Delgado    |
 QA-20260930-000137 | DLV-20260930-000295 |        12.35 | Sara SÃ¡nchez       |
(40 filas)
*/