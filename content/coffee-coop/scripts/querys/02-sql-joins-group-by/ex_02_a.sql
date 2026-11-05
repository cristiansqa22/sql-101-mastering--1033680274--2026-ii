-- Exercise 02 - a
-- All farmers from municipality 54518 with their farm name, including those without a registered farm

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T2.municipality_code = '54518' OR T2.municipality_code IS NULL;

/*
 document |     first_name     |      last_name      |       farm
----------+--------------------+---------------------+------------------
      657 | Guillermo Pedro    | Arias RodrÃ­guez     | La Selva
     1625 | Orlando            | Salazar BermÃºdez    | El Diamante
     2716 | Gloria             | MarÃ­n Rivera        | La Esperanza
     3739 | MarÃ­a              | Burbano Duarte      | El Nogal
     3739 | MarÃ­a              | Burbano Duarte      | La Divisa
     4481 | Ã“scar              | Cabrera Bastidas    | Las Delicias
     5246 | Andrea             | Serrano Mosquera    | La Granja
     5280 | JuliÃ¡n             | PeÃ±a Betancur       | Los Arrayanes
     6320 | Luisa              | Caicedo Restrepo    | La Cascada
     6320 | Luisa              | Caicedo Restrepo    | El Brillante
     7509 | Mario              | Uribe CuÃ©llar       | El Porvenir
     7898 | Esperanza          | Romero Betancur     | La Florida
     9270 | Carmen             | CÃ¡rdenas Moreno     | El Horizonte
     9270 | Carmen             | CÃ¡rdenas Moreno     | La Primavera
     9270 | Carmen             | CÃ¡rdenas Moreno     | El Porvenir
     9714 | NicolÃ¡s            | GonzÃ¡lez RodrÃ­guez  | El Guayabo
    10349 | Gustavo            | CalderÃ³n Bedoya     | La Milagrosa
    10921 | RocÃ­o              | Ãlvarez CÃ¡rdenas    | Bellavista
    10921 | RocÃ­o              | Ãlvarez CÃ¡rdenas    | El Encanto
    10999 | Dora               | HernÃ¡ndez Correa    | Cafetal Viejo
    11280 | Adriana            | Mosquera Ospina     | Las Palmas
    11280 | Adriana            | Mosquera Ospina     | El Vergel
    11353 | MÃ³nica             | Betancur Arango     | Miraflores
    12378 | Daniel             | Bonilla Duarte      | El Horizonte
    12378 | Daniel             | Bonilla Duarte      | La Esperanza
    12378 | Daniel             | Bonilla Duarte      | La Primavera
    12563 | Fernando           | SÃ¡nchez Agudelo     | El Placer
    12711 | InÃ©s               | JimÃ©nez Jaimes      | El Recuerdo
    12858 | IvÃ¡n               | Zapata Ortiz        | El MesÃ³n
    13262 | Antonio            | DÃ­az VÃ©lez          | Las Mercedes
    13262 | Antonio            | DÃ­az VÃ©lez          | Las OrquÃ­deas
    14560 | Aura               | Jaimes Carrillo     | Las Mercedes
    16365 | Jaime Wilmer       | Ortiz Vargas        | La UniÃ³n
    16397 | Nubia              | Cabrera SÃ¡nchez     | El Porvenir
    18484 | Felipe Camilo      | RÃ­os Ospina         | Las Palmas
    18484 | Felipe Camilo      | RÃ­os Ospina         | El Vergel
    18487 | Mauricio           | PeÃ±a Bastidas       | El Recuerdo
    20195 | Martha             | Giraldo Arango      | Altamira
    20195 | Martha             | Giraldo Arango      | San Luis
    20221 | Alejandro          | NarvÃ¡ez PolanÃ­a     | El Danubio
    20959 | Ãlvaro             | Valencia Rivera     | Tierra Linda
    20959 | Ãlvaro             | Valencia Rivera     | Los Laureles
    20979 | David GermÃ¡n       | Romero Bonilla      | La Palma
    23266 | Teresa Adriana     | Valencia Moreno     | La Floresta
    24478 | IvÃ¡n               | BermÃºdez FlÃ³rez     | El Oasis
    24490 | Wilson             | Parra Prada         | Villa Hermosa
    24741 | Liliana Luisa      | Chamorro VÃ©lez      | El Guamo
    25206 | Alberto            | Salazar PabÃ³n       | El EdÃ©n
    25949 | Cristian           | Herrera Zuluaga     | Los Alpes
    26735 | Rafael Francisco   | RincÃ³n Romero       | El Recreo
    29185 | Manuela Yolanda    | Benavides Delgado   | La Argentina
    31529 | Gustavo            | Mosquera LÃ³pez      | La Siberia
    31529 | Gustavo            | Mosquera LÃ³pez      | El HiguerÃ³n
    32943 | SofÃ­a Claudia      | Ortega Ortiz        | San Antonio
    33369 | Aura               | Torres Ortega       | El Tesoro
    36712 | AncÃ­zar            | Arango Silva        | El Recuerdo
    37008 | Esteban            | Salazar Parra       | Las Acacias
    37969 | Manuela            | Bastidas Medina     | Agua Bonita
    38069 | Camilo IvÃ¡n        | CalderÃ³n Trujillo   | La Fortuna
    40548 | Rosa               | RÃ­os CÃ¡rdenas       | El Horizonte
    42933 | Abelardo           | PÃ©rez Castro        | Tierra Linda
    42933 | Abelardo           | PÃ©rez Castro        | Los Laureles
    42933 | Abelardo           | PÃ©rez Castro        | San JosÃ©
    43016 | Alba               | RÃ­os RodrÃ­guez      | El Mirador
    43016 | Alba               | RÃ­os RodrÃ­guez      | La CabaÃ±a
    43464 | Gloria             | Tovar Benavides     | Las Palmas
    44846 | JazmÃ­n             | Burbano Jaimes      | Villa Hermosa
    45380 | Alba               | Vargas Losada       | La Estrella
    46617 | Marleny            | Ãlvarez Correa      | El ArrayÃ¡n
    49317 | RubÃ©n              | Villamizar MejÃ­a    | Altamira
    49564 | Wilmer             | PÃ©rez Chamorro      | El Refugio
    50070 | Arturo             | Contreras PeÃ±a      | La Primavera
    51243 | Mariana            | Ortiz Ruiz          | La Palma
    53823 | RubÃ©n              | Ramos Chamorro      | El Bosque
    54197 | Ãngela             | Barrera PeÃ±a        | La Floresta
    55574 | Jaime              | GÃ³mez Villamizar    | El Manantial
    57888 | Wilmer             | Montoya RodrÃ­guez   | Las Mercedes
    57888 | Wilmer             | Montoya RodrÃ­guez   | El Mango
    57889 | EfraÃ­n             | MartÃ­nez Ramos      | Cafetal Viejo
    58818 | Fabio              | Bastidas Ruiz       | Villa Rosa
    60407 | Fernando           | Rojas CÃ¡rdenas      | La Fortuna
    60751 | JuliÃ¡n             | CÃ¡rdenas Mora       | El Cafetal
    61540 | Luz Martha         | Jaimes BermÃºdez     | El Diamante
    61562 | Jaime Santiago     | CuÃ©llar CÃ¡ceres     | El Mirador
    61562 | Jaime Santiago     | CuÃ©llar CÃ¡ceres     | La CabaÃ±a
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | El EdÃ©n
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | La Ceiba
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | Los Alpes
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | Las Palmas
    61995 | Ricardo            | Castro Contreras    | Los Arrayanes
    61995 | Ricardo            | Castro Contreras    | El Guayabo
    61995 | Ricardo            | Castro Contreras    | La Palma
    63065 | Paola Olga         | MejÃ­a RincÃ³n        | Las Brisas
    63815 | Rafael             | Prada Moreno        | El Silencio
    65238 | Libardo            | Lasso Serrano       | Las Acacias
    65238 | Libardo            | Lasso Serrano       | La Argentina
    65238 | Libardo            | Lasso Serrano       | El Triunfo
    68437 | Gabriela Carolina  | NiÃ±o Ortiz          | El Guamo
    68437 | Gabriela Carolina  | NiÃ±o Ortiz          | La Loma
    68544 | Ramiro             | Barrera Villamizar  | El Oasis
    68802 | Valentina          | Mora Rangel         | Tierra Linda
    68802 | Valentina          | Mora Rangel         | Los Laureles
    68802 | Valentina          | Mora Rangel         | San JosÃ©
    68802 | Valentina          | Mora Rangel         | Bellavista
    68993 | Nubia Natalia      | Henao RamÃ­rez       | La Carolina
    68993 | Nubia Natalia      | Henao RamÃ­rez       | La Cristalina
    68994 | Fabio              | HernÃ¡ndez Lasso     | La Quebrada
    71137 | Luz                | Rojas Torres        | Cafetal Viejo
    71269 | Dora LucÃ­a         | Uribe Arango        | El Recuerdo
    73382 | Sandra             | Henao Jaimes        | Villa Hermosa
    74116 | JuliÃ¡n             | MejÃ­a Torres        | La Cumbre
    78043 | Alejandra          | DÃ­az Perdomo        | Bellavista
    78140 | Rosa               | VÃ©lez Contreras     | San Rafael
    79124 | Viviana            | Arias RamÃ­rez       | La Quebrada
    79656 | Marcela            | Losada Rivera       | Los Pinos
    80102 | Alberto            | Ortiz Lasso         | El Recreo
    81291 | Alejandra          | Ortiz BermÃºdez      | El Refugio
    84104 | Fanny              | Montoya Valencia    | El Guayabo
    84366 | Teresa             | Ibarra Caicedo      | El Nogal
    85073 | GermÃ¡n Rafael      | VÃ©lez Herrera       | El Caney
    85417 | Daniel HÃ©ctor      | Duque Ruiz          | Monteverde
    85417 | Daniel HÃ©ctor      | Duque Ruiz          | El Rosal
    85918 | Patricia Amparo    | Rojas RÃ­os          | El Brillante
    85918 | Patricia Amparo    | Rojas RÃ­os          | San Rafael
    85918 | Patricia Amparo    | Rojas RÃ­os          | Los Guaduales
    87067 | Liliana Gladys     | GarcÃ­a Vargas       | El ParaÃ­so
    87614 | Diana              | Lozano RincÃ³n       | La Isabela
    87614 | Diana              | Lozano RincÃ³n       | El Bosque
    89517 | Carlos             | Castillo Torres     | Los Arrayanes
    89517 | Carlos             | Castillo Torres     | El Guayabo
    89517 | Carlos             | Castillo Torres     | La Palma
    89517 | Carlos             | Castillo Torres     | Santa Elena
    90498 | Nelson Samuel      | Valencia Herrera    | El ArrayÃ¡n
    92030 | Elsa Leidy         | Uribe Uribe         | La Milagrosa
    94278 | Yuliana JazmÃ­n     | MejÃ­a Rangel        | Agua Bonita
    95048 | Myriam             | Sandoval Osorio     | El Nogal
    96747 | Mario              | RincÃ³n SuÃ¡rez       | El JardÃ­n
    97016 | Mateo              | Benavides Rangel    | Santa Clara
    97425 | Alejandro          | MuÃ±oz PolanÃ­a       | Los Alpes
    97685 | Gustavo            | MarÃ­n Sandoval      | Las Margaritas
    97685 | Gustavo            | MarÃ­n Sandoval      | La Reserva
    97685 | Gustavo            | MarÃ­n Sandoval      | El Nogal
    98103 | Alba               | RincÃ³n Rojas        | El Brillante
    98369 | Yesenia            | BermÃºdez Henao      | El Diamante
    98369 | Yesenia            | BermÃºdez Henao      | La Fortuna
    99993 | Natalia            | Ospina Burbano      | Las Mercedes
   101213 | Camilo             | Arias Mora          | Las Delicias
   102925 | JuliÃ¡n Juan        | SuÃ¡rez Rivera       | La CabaÃ±a
   105376 | EfraÃ­n             | Ortega Correa       | La Milagrosa
   105791 | InÃ©s               | Erazo HernÃ¡ndez     | Monte Alto
   108845 | Fanny Nubia        | SuÃ¡rez Rojas        | La Isabela
   110563 | Hugo               | JimÃ©nez Parra       | El Silencio
   110841 | Juliana            | Lozano Perdomo      | Tierra Linda
   111220 | Luis               | Mosquera Perdomo    | Bella Vista Alta
   111220 | Luis               | Mosquera Perdomo    | El Refugio
   111237 | Alberto            | Ãlvarez Villamizar  | El Mango
   111416 | Myriam             | Valencia Moreno     | Los Arrayanes
   111416 | Myriam             | Valencia Moreno     | El Guayabo
   111416 | Myriam             | Valencia Moreno     | La Palma
   112474 | Pedro              | Trujillo VÃ©lez      | El Cedro
   112680 | Manuel             | Quintero Arias      | Villa Rosa
   117987 | Marleny            | Agudelo Sandoval    | El Diamante
   120306 | Camila             | SÃ¡nchez PinzÃ³n      | El ParaÃ­so
   120306 | Camila             | SÃ¡nchez PinzÃ³n      | El Diamante
   120874 | Manuel             | NarvÃ¡ez CalderÃ³n    | Las Margaritas
   120896 | Mateo              | Castro GarcÃ­a       | La Argentina
   122796 | JuliÃ¡n GermÃ¡n      | Delgado Villamizar  | Mi Ranchito
   123426 | Fernando           | Burbano FlÃ³rez      | San Luis
   124756 | Luz                | NiÃ±o Guerrero       | Santa Clara
   125178 | Isabella           | Mosquera Sandoval   | El Brillante
   125178 | Isabella           | Mosquera Sandoval   | San Rafael
   125178 | Isabella           | Mosquera Sandoval   | Los Guaduales
   125369 | Sara               | Losada GutiÃ©rrez    | El Cedro
   125369 | Sara               | Losada GutiÃ©rrez    | La Granja
   125369 | Sara               | Losada GutiÃ©rrez    | El JardÃ­n
   125369 | Sara               | Losada GutiÃ©rrez    | La Selva
   126597 | Sandra             | Sandoval Ortega     | Las Delicias
   127305 | Daniela            | Lozano Castro       | La Victoria
   127305 | Daniela            | Lozano Castro       | El Silencio
   128340 | Libardo            | Trujillo Torres     | El Diamante
   130979 | Sara               | SÃ¡nchez Arango      | La Cumbre
   131487 | Francisco          | Castillo Henao      | El Guayabo
   133431 | Fabio              | DÃ­az CuÃ©llar        | Monte Alto
   137614 | Ã“scar              | Rivera Tovar        | La MontaÃ±a
   138370 | Stella             | MarÃ­n Osorio        | La Gaitana
   139037 | Carlos Mario       | Villamizar Carrillo | El Danubio
   139612 | Jaime              | GarcÃ­a RÃ­os         | El Guayabo
   140042 | MÃ³nica Martha      | Molina Molina       | El Diamante
   142458 | Heriberto          | JimÃ©nez CÃ¡ceres     | Bella Vista Alta
   142523 | Antonio            | Bastidas RodrÃ­guez  | Monteverde
   143228 | Juliana Ana        | MejÃ­a MejÃ­a         | Los Pinos
   143490 | Nelson             | Chamorro Vera       | Santa BÃ¡rbara
   143672 | Nubia Juliana      | Caicedo Medina      | El HiguerÃ³n
   144172 | Emilio             | BermÃºdez Rojas      | Santa Clara
   146007 | Natalia            | CÃ¡ceres Salazar     | La Holanda
   147976 | MÃ³nica             | Ãlvarez Carrillo    | La CabaÃ±a
   147976 | MÃ³nica             | Ãlvarez Carrillo    | Monteverde
   149324 | Gloria             | GutiÃ©rrez Cardona   | La UniÃ³n
     2501 | Jairo              | Molina PabÃ³n        | El Recuerdo
     4675 | Alejandra          | Molina Torres       | Villa Rosa
     8485 | AncÃ­zar Cristian   | PolanÃ­a Delgado     | Los Arrayanes
    11941 | Arturo             | HernÃ¡ndez Uribe     | El HiguerÃ³n
    11941 | Arturo             | HernÃ¡ndez Uribe     | Bella Vista Alta
    12471 | RocÃ­o Manuela      | Jaimes Cardona      | El Silencio
    12471 | RocÃ­o Manuela      | Jaimes Cardona      | El ArrayÃ¡n
    18100 | Edilma             | Rivera Rivera       | San Antonio
    20372 | Gabriela           | RodrÃ­guez Ortega    | Tierra Linda
    21414 | Yeison             | Vargas Perdomo      | Bella Vista Alta
    22421 | David              | Zapata Arias        | Las Acacias
    22421 | David              | Zapata Arias        | La Argentina
    22421 | David              | Zapata Arias        | El Triunfo
    22421 | David              | Zapata Arias        | La Gaitana
    22657 | Rodrigo Nelson     | Cabrera Villamizar  | La Holanda
    23040 | Ãlvaro             | BermÃºdez MarÃ­n      | Los Naranjos
    23040 | Ãlvaro             | BermÃºdez MarÃ­n      | El Retiro
    23040 | Ãlvaro             | BermÃºdez MarÃ­n      | La Victoria
    23558 | Yuliana            | RodrÃ­guez Vargas    | La Siberia
    23558 | Yuliana            | RodrÃ­guez Vargas    | El HiguerÃ³n
    24807 | Mateo              | MejÃ­a Mora          | El Encanto
    25264 | Francisco          | RamÃ­rez Sandoval    | La Reserva
    25264 | Francisco          | RamÃ­rez Sandoval    | El Nogal
    26035 | Juan               | Ortega Zapata       | La Loma
    26952 | Elsa               | MejÃ­a Vera          | El Encanto
    28126 | Hernando           | Montoya Agudelo     | El Encanto
    31509 | Aura               | Castillo Henao      | El Mirador
    31509 | Aura               | Castillo Henao      | La CabaÃ±a
    31736 | Jaime              | MarÃ­n HernÃ¡ndez     | La Aurora
    31857 | Valentina          | Zapata Valencia     | Villa Hermosa
    32146 | InÃ©s LucÃ­a         | DÃ­az CuÃ©llar        | El Oasis
    32504 | RocÃ­o Mariana      | PÃ©rez RodrÃ­guez     | El Tesoro
    33185 | Miguel             | RincÃ³n Agudelo      | La Granja
    36775 | Esperanza          | Valencia Ortiz      | La Siberia
    36775 | Esperanza          | Valencia Ortiz      | El Refugio
    37666 | Fernando           | Galvis Duarte       | Santa Clara
    37666 | Fernando           | Galvis Duarte       | San Antonio
    37666 | Fernando           | Galvis Duarte       | El Horizonte
    37666 | Fernando           | Galvis Duarte       | La Esperanza
    39377 | Luis               | Jaimes Salazar      | La Victoria
    39404 | Javier             | PinzÃ³n JimÃ©nez      | La Loma
    39824 | EfraÃ­n Gustavo     | Carrillo Moreno     | La Gloria
    40889 | MÃ³nica Claudia     | FlÃ³rez GonzÃ¡lez     | La Floresta
    41311 | Hernando Miguel    | JimÃ©nez Restrepo    | La MontaÃ±a
    41313 | InÃ©s               | Duque CÃ¡rdenas      | El Guamo
    41313 | InÃ©s               | Duque CÃ¡rdenas      | La Loma
    42248 | Laura              | Benavides Ãlvarez   | El JardÃ­n
    42752 | Arturo             | Tovar CalderÃ³n      | La Cumbre
    42752 | Arturo             | Tovar CalderÃ³n      | Santa BÃ¡rbara
    42854 | Javier             | GonzÃ¡lez Zuluaga    | La Palma
    43831 | Miguel             | Barrera Osorio      | El Brillante
    47077 | Edilma Gabriela    | Arias Ãlvarez       | Monteverde
    47077 | Edilma Gabriela    | Arias Ãlvarez       | El Rosal
    47845 | Nelson             | Uribe GonzÃ¡lez      | La Argentina
    50126 | Miguel             | Correa Caicedo      | El Guayabo
    50635 | RocÃ­o Juliana      | Herrera Tovar       | La UniÃ³n
    52384 | EfraÃ­n             | PinzÃ³n Cabrera      | Monteverde
    54596 | Mario              | LondoÃ±o Tovar       | Santa Clara
    54824 | Daniela            | Guerrero GonzÃ¡lez   | La Estrella
    56723 | Guillermo          | PÃ©rez PÃ©rez         | El Retiro
    56728 | Abelardo           | PinzÃ³n Bonilla      | La Divisa
    57446 | HÃ©ctor             | Ibarra Ãlvarez      | Las Margaritas
    58883 | Reinaldo           | Romero Agudelo      | Las OrquÃ­deas
    58883 | Reinaldo           | Romero Agudelo      | Los Arrayanes
    58883 | Reinaldo           | Romero Agudelo      | El Guayabo
    59149 | Isabella           | Barrera Cabrera     | San Luis
    59301 | Diego              | NiÃ±o HernÃ¡ndez      | Buenavista
    59301 | Diego              | NiÃ±o HernÃ¡ndez      | La Floresta
    59644 | Pedro Reinaldo     | Henao Molina        | San Luis
    60102 | JuliÃ¡n Guillermo   | Valencia NarvÃ¡ez    | El Silencio
    60311 | Gilberto           | Castillo Villamizar | El Porvenir
    61229 | Gustavo            | Ibarra Agudelo      | El Porvenir
    61603 | Mauricio Carlos    | Carrillo Jaimes     | Las Acacias
    61975 | MarÃ­a              | Rojas Villamizar    | Villa Hermosa
    62373 | Gustavo Pedro      | Romero PinzÃ³n       | El Recreo
    62717 | Mario              | RÃ­os Ibarra         | Villa Rosa
    63693 | Mariana            | Barrera Correa      | La Siberia
    63801 | Mauricio Luis      | FlÃ³rez Romero       | La Milagrosa
    65833 | Luis               | RamÃ­rez Cardona     | La Carolina
    66655 | MÃ³nica Elsa        | RamÃ­rez Castro      | La Soledad
    66655 | MÃ³nica Elsa        | RamÃ­rez Castro      | La Quebrada
    66985 | Ruth               | RodrÃ­guez PÃ©rez     | El Horizonte
    68175 | Alejandra Andrea   | Mosquera Moreno     | El Placer
    68477 | Liliana            | PÃ©rez Parra         | Villa Hermosa
    72088 | Mateo              | Henao Carrillo      | Villa Hermosa
    73586 | Mercedes           | Chamorro Rangel     | Cafetal Viejo
    75750 | Gloria Aura        | RÃ­os Vera           | La Cascada
    78314 | Alba               | Vera CalderÃ³n       | Los Guaduales
    79483 | David              | Perdomo Mosquera    | Mi Ranchito
    79587 | Luisa              | Montoya MejÃ­a       | La Aurora
    79587 | Luisa              | Montoya MejÃ­a       | El Tesoro
    81193 | Yuliana            | Sandoval Bedoya     | La Granja
    82408 | IvÃ¡n Jaime         | CÃ¡ceres Galvis      | El Silencio
    82408 | IvÃ¡n Jaime         | CÃ¡ceres Galvis      | El ArrayÃ¡n
    85505 | Alberto            | BermÃºdez GÃ³mez      | Villa Hermosa
    85972 | RocÃ­o              | Bastidas SuÃ¡rez     | La Argentina
    85972 | RocÃ­o              | Bastidas SuÃ¡rez     | El Triunfo
    86632 | Ramiro             | Zuluaga Duque       | El Tesoro
    87442 | Mauricio           | Prada Villamizar    | Miraflores
    88113 | Ã“scar              | Ospina GonzÃ¡lez     | La Esperanza
    91475 | Amparo             | Duarte Duque        | La Ceiba
    95954 | Wilmer             | SÃ¡nchez Torres      | La Aurora
    96215 | Nubia              | CÃ¡rdenas Benavides  | La Palma
    97970 | Viviana            | Duque Burbano       | San Antonio
    98453 | Mateo              | Restrepo SuÃ¡rez     | Las Margaritas
    99920 | Manuel             | Agudelo JimÃ©nez     | El JardÃ­n
    99920 | Manuel             | Agudelo JimÃ©nez     | La Selva
   100166 | Mauricio           | Perdomo Cabrera     | Agua Bonita
   102354 | Myriam Yuliana     | Arango NarvÃ¡ez      | Monteverde
   103084 | Gustavo            | BermÃºdez Bedoya     | El Horizonte
   104015 | Miguel             | Duque Giraldo       | El Vergel
   104763 | AnÃ­bal             | Silva Villamizar    | Bellavista
   104763 | AnÃ­bal             | Silva Villamizar    | El Encanto
   105013 | Miguel             | Villamizar Correa   | Los Pinos
   105299 | Gloria             | RincÃ³n Acevedo      | La Argentina
   106693 | Wilson Yeison      | DÃ­az RamÃ­rez        | La Palma
   107991 | Erika              | RÃ­os SuÃ¡rez         | La Holanda
   109820 | Reinaldo Jorge     | SÃ¡nchez Agudelo     | El Cedro
   110449 | Pedro              | RamÃ­rez Barrera     | La Aurora
   110449 | Pedro              | RamÃ­rez Barrera     | El Tesoro
   115925 | SofÃ­a              | MarÃ­n Rojas         | Buenavista
   116097 | Ramiro             | Parra Trujillo      | La Pradera
   116097 | Ramiro             | Parra Trujillo      | Las Delicias
   116351 | Heriberto AndrÃ©s   | CuÃ©llar Romero      | El Mango
   116351 | Heriberto AndrÃ©s   | CuÃ©llar Romero      | Las OrquÃ­deas
   116351 | Heriberto AndrÃ©s   | CuÃ©llar Romero      | Los Arrayanes
   117215 | Aura               | Cardona Barrera     | El EdÃ©n
   118405 | Yesenia            | RincÃ³n Caicedo      | El Oasis
   119149 | Alba               | JimÃ©nez PÃ©rez       | La Selva
   120446 | Gustavo Heriberto  | Torres Guerrero     | La Gaitana
   120446 | Gustavo Heriberto  | Torres Guerrero     | El Recuerdo
   120830 | Elsa               | MarÃ­n Henao         | Bellavista
   121239 | Martha Carolina    | PÃ©rez Jaimes        | El Cedro
   122172 | Ãlvaro             | Correa RÃ­os         | Cafetal Viejo
   123974 | Abelardo           | Giraldo Tovar       | El MesÃ³n
   124085 | Wilmer             | Ortiz Betancur      | Monteverde
   124310 | IvÃ¡n               | Giraldo Cabrera     | La Palma
   124531 | Diana              | DÃ­az Medina         | Cafetal Viejo
   125210 | Dora               | Sandoval GarcÃ­a     | La Floresta
   125701 | Diana Isabella     | Molina Moreno       | La Isabela
   125701 | Diana Isabella     | Molina Moreno       | El Bosque
   126673 | Francisco          | Restrepo Perdomo    | El MesÃ³n
   129787 | Ricardo Felipe     | DÃ­az RodrÃ­guez      | Santa Clara
   132159 | Carolina Alejandra | Benavides MartÃ­nez  | La UniÃ³n
   132229 | David              | Jaimes Ruiz         | El Nogal
   132229 | David              | Jaimes Ruiz         | La Divisa
   132229 | David              | Jaimes Ruiz         | La Milagrosa
   133582 | Jairo              | Romero GutiÃ©rrez    | La Quebrada
   134033 | Rafael             | Romero Prada        | La CabaÃ±a
   134817 | Nelson             | Bedoya VÃ©lez        | Las Margaritas
   134817 | Nelson             | Bedoya VÃ©lez        | La Reserva
   135840 | Viviana            | GonzÃ¡lez Molina     | Las Brisas
   135840 | Viviana            | GonzÃ¡lez Molina     | El Cedro
   135840 | Viviana            | GonzÃ¡lez Molina     | La Granja
   135840 | Viviana            | GonzÃ¡lez Molina     | El JardÃ­n
   136226 | Rafael HÃ©ctor      | Bedoya PinzÃ³n       | Los Pinos
   136965 | Yeison             | Medina LondoÃ±o      | La Cascada
   137392 | Emilio             | Carrillo Perdomo    | La Milagrosa
   138643 | RocÃ­o Alba         | Ortega Serrano      | San JosÃ©
   138643 | RocÃ­o Alba         | Ortega Serrano      | Bellavista
   138643 | RocÃ­o Alba         | Ortega Serrano      | El Encanto
   138870 | Ã‰dgar              | Burbano Arango      | La Reserva
   142037 | Yesenia            | Silva Henao         | El Retiro
   143816 | Rodrigo Guillermo  | BermÃºdez MuÃ±oz      | Las Palmas
   144603 | Erika              | VÃ©lez MarÃ­n         | Los Laureles
   144694 | Sandra             | Ortega GarcÃ­a       | La Primavera
   144694 | Sandra             | Ortega GarcÃ­a       | El Porvenir
   144796 | Juliana            | Ortega Osorio       | El Refugio
   146704 | Laura              | Zuluaga Benavides   | El Bosque
   147264 | Luz                | Osorio CuÃ©llar      | San JosÃ©
(368 filas)
*/