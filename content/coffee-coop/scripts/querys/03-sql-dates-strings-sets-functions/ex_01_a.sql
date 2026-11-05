-- Exercise 01 - a
-- Farmers from municipality 54518 with membership age in days based on CURRENT_DATE

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    (CURRENT_DATE - T1.membership_date) AS membership_days
FROM farm.farmers AS T1
INNER JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T2.municipality_code = '54518'
ORDER BY membership_days DESC;

/*
 document |     first_name     |      last_name      | membership_date | membership_days
----------+--------------------+---------------------+-----------------+-----------------
    60102 | JuliÃ¡n Guillermo   | Valencia NarvÃ¡ez    | 1995-01-27      |           11604
   138643 | RocÃ­o Alba         | Ortega Serrano      | 1995-07-10      |           11440
   138643 | RocÃ­o Alba         | Ortega Serrano      | 1995-07-10      |           11440
   138643 | RocÃ­o Alba         | Ortega Serrano      | 1995-07-10      |           11440
    24490 | Wilson             | Parra Prada         | 1995-07-28      |           11422   149324 | Gloria             | GutiÃ©rrez Cardona   | 1995-10-27      |           11331
    97970 | Viviana            | Duque Burbano       | 1995-12-25      |           11272    42248 | Laura              | Benavides Ãlvarez   | 1996-03-05      |           11201
    46617 | Marleny            | Ãlvarez Correa      | 1996-03-20      |           11186
    23266 | Teresa Adriana     | Valencia Moreno     | 1996-07-23      |           11061   121239 | Martha Carolina    | PÃ©rez Jaimes        | 1996-11-22      |           10939
    99920 | Manuel             | Agudelo JimÃ©nez     | 1997-03-29      |           10812
    99920 | Manuel             | Agudelo JimÃ©nez     | 1997-03-29      |           10812
    68544 | Ramiro             | Barrera Villamizar  | 1997-04-08      |           10802    78043 | Alejandra          | DÃ­az Perdomo        | 1997-05-05      |           10775
    56723 | Guillermo          | PÃ©rez PÃ©rez         | 1997-05-17      |           10763
    26035 | Juan               | Ortega Zapata       | 1997-07-13      |           10706    78140 | Rosa               | VÃ©lez Contreras     | 1997-11-29      |           10567
    16397 | Nubia              | Cabrera SÃ¡nchez     | 1997-12-18      |           10548
    43831 | Miguel             | Barrera Osorio      | 1998-01-08      |           10527    61975 | MarÃ­a              | Rojas Villamizar    | 1998-01-21      |           10514
    47077 | Edilma Gabriela    | Arias Ãlvarez       | 1998-03-24      |           1045-2
    47077 | Edilma Gabriela    | Arias Ãlvarez       | 1998-03-24      |           1045-2
    63693 | Mariana            | Barrera Correa      | 1998-03-27      |           10449    88113 | Ã“scar              | Ospina GonzÃ¡lez     | 1998-05-02      |           10413
   124310 | IvÃ¡n               | Giraldo Cabrera     | 1998-05-21      |           10394
    81291 | Alejandra          | Ortiz BermÃºdez      | 1998-06-17      |           10367
   111220 | Luis               | Mosquera Perdomo    | 1998-07-29      |           10325   111220 | Luis               | Mosquera Perdomo    | 1998-07-29      |           10325   136965 | Yeison             | Medina LondoÃ±o      | 1998-09-29      |           10263
   111416 | Myriam             | Valencia Moreno     | 1998-11-03      |           10228   111416 | Myriam             | Valencia Moreno     | 1998-11-03      |           10228   111416 | Myriam             | Valencia Moreno     | 1998-11-03      |           10228    60407 | Fernando           | Rojas CÃ¡rdenas      | 1998-12-16      |           10185
    53823 | RubÃ©n              | Ramos Chamorro      | 1999-03-02      |           10109
    57889 | EfraÃ­n             | MartÃ­nez Ramos      | 1999-03-30      |           10081
   130979 | Sara               | SÃ¡nchez Arango      | 1999-06-12      |           10007
    23040 | Ãlvaro             | BermÃºdez MarÃ­n      | 1999-06-21      |            9-998
    23040 | Ãlvaro             | BermÃºdez MarÃ­n      | 1999-06-21      |            9-998
    23040 | Ãlvaro             | BermÃºdez MarÃ­n      | 1999-06-21      |            9-998
    20195 | Martha             | Giraldo Arango      | 1999-09-14      |            9913    20195 | Martha             | Giraldo Arango      | 1999-09-14      |            9913   120446 | Gustavo Heriberto  | Torres Guerrero     | 1999-12-30      |            9806   120446 | Gustavo Heriberto  | Torres Guerrero     | 1999-12-30      |            9806   111237 | Alberto            | Ãlvarez Villamizar  | 2000-04-14      |            970-0
    24478 | IvÃ¡n               | BermÃºdez FlÃ³rez     | 2000-09-03      |            9558
   120830 | Elsa               | MarÃ­n Henao         | 2001-03-17      |            9363
   135840 | Viviana            | GonzÃ¡lez Molina     | 2001-04-18      |            9331
   135840 | Viviana            | GonzÃ¡lez Molina     | 2001-04-18      |            9331
   135840 | Viviana            | GonzÃ¡lez Molina     | 2001-04-18      |            9331
   135840 | Viviana            | GonzÃ¡lez Molina     | 2001-04-18      |            9331
    28126 | Hernando           | Montoya Agudelo     | 2001-07-22      |            9236   104015 | Miguel             | Duque Giraldo       | 2001-07-29      |            9229    36775 | Esperanza          | Valencia Ortiz      | 2001-08-12      |            9215    36775 | Esperanza          | Valencia Ortiz      | 2001-08-12      |            9215    81193 | Yuliana            | Sandoval Bedoya     | 2001-09-24      |            9172    89517 | Carlos             | Castillo Torres     | 2001-10-14      |            9152    89517 | Carlos             | Castillo Torres     | 2001-10-14      |            9152    89517 | Carlos             | Castillo Torres     | 2001-10-14      |            9152    89517 | Carlos             | Castillo Torres     | 2001-10-14      |            9152   106693 | Wilson Yeison      | DÃ­az RamÃ­rez        | 2001-12-19      |            9086
    97685 | Gustavo            | MarÃ­n Sandoval      | 2002-04-29      |            8955
    97685 | Gustavo            | MarÃ­n Sandoval      | 2002-04-29      |            8955
    97685 | Gustavo            | MarÃ­n Sandoval      | 2002-04-29      |            8955
   104763 | AnÃ­bal             | Silva Villamizar    | 2002-05-19      |            8935
   104763 | AnÃ­bal             | Silva Villamizar    | 2002-05-19      |            8935
    54596 | Mario              | LondoÃ±o Tovar       | 2002-06-19      |            8904
     9270 | Carmen             | CÃ¡rdenas Moreno     | 2002-06-25      |            8898
     9270 | Carmen             | CÃ¡rdenas Moreno     | 2002-06-25      |            8898
     9270 | Carmen             | CÃ¡rdenas Moreno     | 2002-06-25      |            8898
   120306 | Camila             | SÃ¡nchez PinzÃ³n      | 2002-07-01      |            8892
   120306 | Camila             | SÃ¡nchez PinzÃ³n      | 2002-07-01      |            8892
   144694 | Sandra             | Ortega GarcÃ­a       | 2002-08-11      |            8851
   144694 | Sandra             | Ortega GarcÃ­a       | 2002-08-11      |            8851
    97425 | Alejandro          | MuÃ±oz PolanÃ­a       | 2002-08-14      |            8848
    20979 | David GermÃ¡n       | Romero Bonilla      | 2002-10-11      |            8790
    32504 | RocÃ­o Mariana      | PÃ©rez RodrÃ­guez     | 2002-10-16      |            8785
    40889 | MÃ³nica Claudia     | FlÃ³rez GonzÃ¡lez     | 2002-10-28      |            8773
    84104 | Fanny              | Montoya Valencia    | 2003-04-01      |            8618    42933 | Abelardo           | PÃ©rez Castro        | 2003-06-19      |            8539
    42933 | Abelardo           | PÃ©rez Castro        | 2003-06-19      |            8539
    42933 | Abelardo           | PÃ©rez Castro        | 2003-06-19      |            8539
   144796 | Juliana            | Ortega Osorio       | 2003-09-04      |            8462    38069 | Camilo IvÃ¡n        | CalderÃ³n Trujillo   | 2003-12-14      |            8361
    44846 | JazmÃ­n             | Burbano Jaimes      | 2003-12-19      |            8356
   117987 | Marleny            | Agudelo Sandoval    | 2003-12-24      |            8351    91475 | Amparo             | Duarte Duque        | 2003-12-29      |            8346    95954 | Wilmer             | SÃ¡nchez Torres      | 2004-01-31      |            8313
   125178 | Isabella           | Mosquera Sandoval   | 2004-07-01      |            8161   125178 | Isabella           | Mosquera Sandoval   | 2004-07-01      |            8161   125178 | Isabella           | Mosquera Sandoval   | 2004-07-01      |            8161    39824 | EfraÃ­n Gustavo     | Carrillo Moreno     | 2004-07-08      |            8154
     3739 | MarÃ­a              | Burbano Duarte      | 2004-09-23      |            8077
     3739 | MarÃ­a              | Burbano Duarte      | 2004-09-23      |            8077
    42752 | Arturo             | Tovar CalderÃ³n      | 2004-10-18      |            8052
    42752 | Arturo             | Tovar CalderÃ³n      | 2004-10-18      |            8052
   110841 | Juliana            | Lozano Perdomo      | 2005-03-02      |            7917    96747 | Mario              | RincÃ³n SuÃ¡rez       | 2005-04-23      |            7865
   102925 | JuliÃ¡n Juan        | SuÃ¡rez Rivera       | 2005-11-15      |            7659
    50070 | Arturo             | Contreras PeÃ±a      | 2005-12-04      |            7640
    20372 | Gabriela           | RodrÃ­guez Ortega    | 2005-12-11      |            7633
   128340 | Libardo            | Trujillo Torres     | 2005-12-16      |            7628   105299 | Gloria             | RincÃ³n Acevedo      | 2005-12-29      |            7615
    74116 | JuliÃ¡n             | MejÃ­a Torres        | 2006-03-25      |            7529
    37969 | Manuela            | Bastidas Medina     | 2006-04-11      |            7512    85417 | Daniel HÃ©ctor      | Duque Ruiz          | 2006-04-18      |            7505
    85417 | Daniel HÃ©ctor      | Duque Ruiz          | 2006-04-18      |            7505
    24807 | Mateo              | MejÃ­a Mora          | 2006-04-29      |            7494
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | 2006-05-01      |            7492
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | 2006-05-01      |            7492
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | 2006-05-01      |            7492
    61650 | Myriam             | FlÃ³rez GonzÃ¡lez     | 2006-05-01      |            7492
    45380 | Alba               | Vargas Losada       | 2006-06-01      |            7461   147976 | MÃ³nica             | Ãlvarez Carrillo    | 2006-09-25      |            73-45
   147976 | MÃ³nica             | Ãlvarez Carrillo    | 2006-09-25      |            73-45
    78314 | Alba               | Vera CalderÃ³n       | 2006-12-06      |            7273
   143816 | Rodrigo Guillermo  | BermÃºdez MuÃ±oz      | 2006-12-11      |            7268
    12858 | IvÃ¡n               | Zapata Ortiz        | 2007-01-20      |            7228
    71137 | Luz                | Rojas Torres        | 2007-04-09      |            7149   124531 | Diana              | DÃ­az Medina         | 2007-05-01      |            7127
    26735 | Rafael Francisco   | RincÃ³n Romero       | 2007-07-15      |            7052
    51243 | Mariana            | Ortiz Ruiz          | 2007-08-06      |            7030   129787 | Ricardo Felipe     | DÃ­az RodrÃ­guez      | 2007-08-20      |            7016
   138870 | Ã‰dgar              | Burbano Arango      | 2007-09-02      |            7003
   142523 | Antonio            | Bastidas RodrÃ­guez  | 2007-10-14      |            6961
    66655 | MÃ³nica Elsa        | RamÃ­rez Castro      | 2007-11-28      |            6916
    66655 | MÃ³nica Elsa        | RamÃ­rez Castro      | 2007-11-28      |            6916
    31736 | Jaime              | MarÃ­n HernÃ¡ndez     | 2008-01-27      |            6856
    39377 | Luis               | Jaimes Salazar      | 2008-02-07      |            6845    12711 | InÃ©s               | JimÃ©nez Jaimes      | 2008-02-11      |            6841
    11353 | MÃ³nica             | Betancur Arango     | 2008-03-06      |            6817
   101213 | Camilo             | Arias Mora          | 2008-05-10      |            6752    43016 | Alba               | RÃ­os RodrÃ­guez      | 2008-05-14      |            6748
    43016 | Alba               | RÃ­os RodrÃ­guez      | 2008-05-14      |            6748
    94278 | Yuliana JazmÃ­n     | MejÃ­a Rangel        | 2008-06-17      |            6714
     7509 | Mario              | Uribe CuÃ©llar       | 2008-06-30      |            6701
    10349 | Gustavo            | CalderÃ³n Bedoya     | 2008-07-03      |            6698
    92030 | Elsa Leidy         | Uribe Uribe         | 2008-07-06      |            6695    25264 | Francisco          | RamÃ­rez Sandoval    | 2008-08-09      |            6661
    25264 | Francisco          | RamÃ­rez Sandoval    | 2008-08-09      |            6661
    84366 | Teresa             | Ibarra Caicedo      | 2008-12-20      |            6528    22421 | David              | Zapata Arias        | 2009-02-20      |            6466    22421 | David              | Zapata Arias        | 2009-02-20      |            6466    22421 | David              | Zapata Arias        | 2009-02-20      |            6466    22421 | David              | Zapata Arias        | 2009-02-20      |            6466    22657 | Rodrigo Nelson     | Cabrera Villamizar  | 2009-05-02      |            6395    68993 | Nubia Natalia      | Henao RamÃ­rez       | 2009-05-15      |            6382
    68993 | Nubia Natalia      | Henao RamÃ­rez       | 2009-05-15      |            6382
   125369 | Sara               | Losada GutiÃ©rrez    | 2009-06-09      |            6357
   125369 | Sara               | Losada GutiÃ©rrez    | 2009-06-09      |            6357
   125369 | Sara               | Losada GutiÃ©rrez    | 2009-06-09      |            6357
   125369 | Sara               | Losada GutiÃ©rrez    | 2009-06-09      |            6357
    65238 | Libardo            | Lasso Serrano       | 2010-02-09      |            6112    65238 | Libardo            | Lasso Serrano       | 2010-02-09      |            6112    65238 | Libardo            | Lasso Serrano       | 2010-02-09      |            6112     9714 | NicolÃ¡s            | GonzÃ¡lez RodrÃ­guez  | 2010-03-05      |            6088
    59644 | Pedro Reinaldo     | Henao Molina        | 2010-03-28      |            6065   143490 | Nelson             | Chamorro Vera       | 2010-04-17      |            6045    25949 | Cristian           | Herrera Zuluaga     | 2010-04-28      |            6034   115925 | SofÃ­a              | MarÃ­n Rojas         | 2010-05-06      |            6026
    40548 | Rosa               | RÃ­os CÃ¡rdenas       | 2010-06-24      |            5977
    97016 | Mateo              | Benavides Rangel    | 2010-09-22      |            5887    68437 | Gabriela Carolina  | NiÃ±o Ortiz          | 2010-12-08      |            5810
    68437 | Gabriela Carolina  | NiÃ±o Ortiz          | 2010-12-08      |            5810
    66985 | Ruth               | RodrÃ­guez PÃ©rez     | 2010-12-11      |            5807
   146007 | Natalia            | CÃ¡ceres Salazar     | 2011-01-09      |            5778
    61562 | Jaime Santiago     | CuÃ©llar CÃ¡ceres     | 2011-01-17      |            5770
    61562 | Jaime Santiago     | CuÃ©llar CÃ¡ceres     | 2011-01-17      |            5770
    29185 | Manuela Yolanda    | Benavides Delgado   | 2011-02-27      |            5729   137614 | Ã“scar              | Rivera Tovar        | 2011-03-11      |            5717
    98103 | Alba               | RincÃ³n Rojas        | 2011-06-08      |            5628
   103084 | Gustavo            | BermÃºdez Bedoya     | 2011-07-02      |            5604
   122796 | JuliÃ¡n GermÃ¡n      | Delgado Villamizar  | 2011-11-24      |            5459
   118405 | Yesenia            | RincÃ³n Caicedo      | 2011-12-05      |            5448
   105013 | Miguel             | Villamizar Correa   | 2011-12-30      |            5423    85972 | RocÃ­o              | Bastidas SuÃ¡rez     | 2012-01-07      |            5415
    85972 | RocÃ­o              | Bastidas SuÃ¡rez     | 2012-01-07      |            5415
    59149 | Isabella           | Barrera Cabrera     | 2012-01-31      |            5391   132159 | Carolina Alejandra | Benavides MartÃ­nez  | 2012-02-08      |            5383
   136226 | Rafael HÃ©ctor      | Bedoya PinzÃ³n       | 2012-05-24      |            5277
    11941 | Arturo             | HernÃ¡ndez Uribe     | 2012-06-16      |            5254
    11941 | Arturo             | HernÃ¡ndez Uribe     | 2012-06-16      |            5254
   109820 | Reinaldo Jorge     | SÃ¡nchez Agudelo     | 2012-07-06      |            5234
   105376 | EfraÃ­n             | Ortega Correa       | 2012-07-19      |            5221
    25206 | Alberto            | Salazar PabÃ³n       | 2012-07-27      |            5213
    49564 | Wilmer             | PÃ©rez Chamorro      | 2012-09-16      |            5162
   100166 | Mauricio           | Perdomo Cabrera     | 2012-09-19      |            5159   123974 | Abelardo           | Giraldo Tovar       | 2012-12-05      |            5082   126597 | Sandra             | Sandoval Ortega     | 2013-01-06      |            5050    24741 | Liliana Luisa      | Chamorro VÃ©lez      | 2013-01-09      |            5047
    55574 | Jaime              | GÃ³mez Villamizar    | 2013-01-10      |            5046
    54824 | Daniela            | Guerrero GonzÃ¡lez   | 2013-05-20      |            4916
   147264 | Luz                | Osorio CuÃ©llar      | 2013-05-28      |            4908
    54197 | Ãngela             | Barrera PeÃ±a        | 2013-06-26      |            48-79
   116097 | Ramiro             | Parra Trujillo      | 2013-07-07      |            4868   116097 | Ramiro             | Parra Trujillo      | 2013-07-07      |            4868    85505 | Alberto            | BermÃºdez GÃ³mez      | 2013-08-12      |            4832
   110563 | Hugo               | JimÃ©nez Parra       | 2013-09-02      |            4811
    57888 | Wilmer             | Montoya RodrÃ­guez   | 2013-11-10      |            4742
    57888 | Wilmer             | Montoya RodrÃ­guez   | 2013-11-10      |            4742
    16365 | Jaime Wilmer       | Ortiz Vargas        | 2014-01-22      |            4669    68175 | Alejandra Andrea   | Mosquera Moreno     | 2014-02-21      |            4639    10999 | Dora               | HernÃ¡ndez Correa    | 2014-03-08      |            4624
     2501 | Jairo              | Molina PabÃ³n        | 2014-03-13      |            4619
    47845 | Nelson             | Uribe GonzÃ¡lez      | 2014-05-11      |            4560
    79656 | Marcela            | Losada Rivera       | 2014-05-31      |            4540   142458 | Heriberto          | JimÃ©nez CÃ¡ceres     | 2014-07-17      |            4493
    87442 | Mauricio           | Prada Villamizar    | 2014-07-23      |            4487    56728 | Abelardo           | PinzÃ³n Bonilla      | 2014-09-01      |            4447
   116351 | Heriberto AndrÃ©s   | CuÃ©llar Romero      | 2014-09-05      |            4443
   116351 | Heriberto AndrÃ©s   | CuÃ©llar Romero      | 2014-09-05      |            4443
   116351 | Heriberto AndrÃ©s   | CuÃ©llar Romero      | 2014-09-05      |            4443
    12378 | Daniel             | Bonilla Duarte      | 2014-09-29      |            4419    12378 | Daniel             | Bonilla Duarte      | 2014-09-29      |            4419    12378 | Daniel             | Bonilla Duarte      | 2014-09-29      |            4419    63065 | Paola Olga         | MejÃ­a RincÃ³n        | 2014-10-13      |            4405
   117215 | Aura               | Cardona Barrera     | 2014-10-18      |            4400    90498 | Nelson Samuel      | Valencia Herrera    | 2014-10-27      |            4391   143672 | Nubia Juliana      | Caicedo Medina      | 2014-12-15      |            4342    18100 | Edilma             | Rivera Rivera       | 2014-12-20      |            4337    95048 | Myriam             | Sandoval Osorio     | 2015-01-12      |            4314   139612 | Jaime              | GarcÃ­a RÃ­os         | 2015-02-27      |            4268
    79124 | Viviana            | Arias RamÃ­rez       | 2015-04-16      |            4220
    20959 | Ãlvaro             | Valencia Rivera     | 2015-05-03      |            420-3
    20959 | Ãlvaro             | Valencia Rivera     | 2015-05-03      |            420-3
    41313 | InÃ©s               | Duque CÃ¡rdenas      | 2015-05-19      |            4187
    41313 | InÃ©s               | Duque CÃ¡rdenas      | 2015-05-19      |            4187
     4481 | Ã“scar              | Cabrera Bastidas    | 2015-06-29      |            4146
    61229 | Gustavo            | Ibarra Agudelo      | 2015-06-30      |            4145    32146 | InÃ©s LucÃ­a         | DÃ­az CuÃ©llar        | 2015-07-08      |            4137
    63815 | Rafael             | Prada Moreno        | 2015-07-22      |            4123   120896 | Mateo              | Castro GarcÃ­a       | 2015-08-04      |            4110
    62373 | Gustavo Pedro      | Romero PinzÃ³n       | 2015-08-25      |            4089
     7898 | Esperanza          | Romero Betancur     | 2015-08-30      |            4084    73586 | Mercedes           | Chamorro Rangel     | 2015-09-27      |            4056    68994 | Fabio              | HernÃ¡ndez Lasso     | 2015-11-16      |            4006
   110449 | Pedro              | RamÃ­rez Barrera     | 2015-11-19      |            4003
    21414 | Yeison             | Vargas Perdomo      | 2015-11-19      |            4003   110449 | Pedro              | RamÃ­rez Barrera     | 2015-11-19      |            4003
   144603 | Erika              | VÃ©lez MarÃ­n         | 2015-12-09      |            3983
    85918 | Patricia Amparo    | Rojas RÃ­os          | 2015-12-25      |            3967
    85918 | Patricia Amparo    | Rojas RÃ­os          | 2015-12-25      |            3967
    85918 | Patricia Amparo    | Rojas RÃ­os          | 2015-12-25      |            3967
    98453 | Mateo              | Restrepo SuÃ¡rez     | 2016-01-15      |            3946
   146704 | Laura              | Zuluaga Benavides   | 2016-01-19      |            3942    12471 | RocÃ­o Manuela      | Jaimes Cardona      | 2016-03-04      |            3897
    12471 | RocÃ­o Manuela      | Jaimes Cardona      | 2016-03-04      |            3897
    60751 | JuliÃ¡n             | CÃ¡rdenas Mora       | 2016-03-29      |            3872
    73382 | Sandra             | Henao Jaimes        | 2016-03-31      |            3870    31529 | Gustavo            | Mosquera LÃ³pez      | 2016-05-14      |            3826
    31529 | Gustavo            | Mosquera LÃ³pez      | 2016-05-14      |            3826
   112680 | Manuel             | Quintero Arias      | 2016-07-15      |            3764    18484 | Felipe Camilo      | RÃ­os Ospina         | 2016-07-27      |            3752
    18484 | Felipe Camilo      | RÃ­os Ospina         | 2016-07-27      |            3752
    87614 | Diana              | Lozano RincÃ³n       | 2016-12-01      |            3625
    87614 | Diana              | Lozano RincÃ³n       | 2016-12-01      |            3625
   134817 | Nelson             | Bedoya VÃ©lez        | 2016-12-09      |            3617
   134817 | Nelson             | Bedoya VÃ©lez        | 2016-12-09      |            3617
    60311 | Gilberto           | Castillo Villamizar | 2016-12-22      |            3604    31857 | Valentina          | Zapata Valencia     | 2017-01-12      |            3583      657 | Guillermo Pedro    | Arias RodrÃ­guez     | 2017-01-27      |            3568
   138370 | Stella             | MarÃ­n Osorio        | 2017-03-13      |            3523
    14560 | Aura               | Jaimes Carrillo     | 2017-05-01      |            3474   125210 | Dora               | Sandoval GarcÃ­a     | 2017-05-19      |            3456
   132229 | David              | Jaimes Ruiz         | 2017-05-24      |            3451   132229 | David              | Jaimes Ruiz         | 2017-05-24      |            3451   132229 | David              | Jaimes Ruiz         | 2017-05-24      |            3451   126673 | Francisco          | Restrepo Perdomo    | 2017-06-28      |            3416    59301 | Diego              | NiÃ±o HernÃ¡ndez      | 2017-07-04      |            3410
    59301 | Diego              | NiÃ±o HernÃ¡ndez      | 2017-07-04      |            3410
    52384 | EfraÃ­n             | PinzÃ³n Cabrera      | 2017-07-23      |            3391
     5280 | JuliÃ¡n             | PeÃ±a Betancur       | 2017-08-10      |            3373
    62717 | Mario              | RÃ­os Ibarra         | 2017-09-05      |            3347
   120874 | Manuel             | NarvÃ¡ez CalderÃ³n    | 2017-10-26      |            3296
    50635 | RocÃ­o Juliana      | Herrera Tovar       | 2017-11-04      |            3287
    63801 | Mauricio Luis      | FlÃ³rez Romero       | 2017-11-13      |            3278
   123426 | Fernando           | Burbano FlÃ³rez      | 2017-11-22      |            3269
   102354 | Myriam Yuliana     | Arango NarvÃ¡ez      | 2018-02-23      |            3176
    80102 | Alberto            | Ortiz Lasso         | 2018-04-22      |            3118    99993 | Natalia            | Ospina Burbano      | 2018-05-04      |            3106   105791 | InÃ©s               | Erazo HernÃ¡ndez     | 2018-05-11      |            3099
    85073 | GermÃ¡n Rafael      | VÃ©lez Herrera       | 2018-05-18      |            3092
    61540 | Luz Martha         | Jaimes BermÃºdez     | 2018-07-11      |            3038
    68802 | Valentina          | Mora Rangel         | 2018-08-12      |            3006    68802 | Valentina          | Mora Rangel         | 2018-08-12      |            3006    68802 | Valentina          | Mora Rangel         | 2018-08-12      |            3006    68802 | Valentina          | Mora Rangel         | 2018-08-12      |            3006   133582 | Jairo              | Romero GutiÃ©rrez    | 2018-08-15      |            3003
    10921 | RocÃ­o              | Ãlvarez CÃ¡rdenas    | 2018-09-19      |            2-968
    10921 | RocÃ­o              | Ãlvarez CÃ¡rdenas    | 2018-09-19      |            2-968
   142037 | Yesenia            | Silva Henao         | 2018-11-08      |            2918    58883 | Reinaldo           | Romero Agudelo      | 2019-02-22      |            2812    58883 | Reinaldo           | Romero Agudelo      | 2019-02-22      |            2812    58883 | Reinaldo           | Romero Agudelo      | 2019-02-22      |            2812    33369 | Aura               | Torres Ortega       | 2019-03-11      |            2795    32943 | SofÃ­a Claudia      | Ortega Ortiz        | 2019-03-15      |            2791
    33185 | Miguel             | RincÃ³n Agudelo      | 2019-04-11      |            2764
   125701 | Diana Isabella     | Molina Moreno       | 2019-04-12      |            2763   125701 | Diana Isabella     | Molina Moreno       | 2019-04-12      |            2763    79483 | David              | Perdomo Mosquera    | 2019-05-15      |            2730    98369 | Yesenia            | BermÃºdez Henao      | 2019-06-03      |            2711
    98369 | Yesenia            | BermÃºdez Henao      | 2019-06-03      |            2711
   143228 | Juliana Ana        | MejÃ­a MejÃ­a         | 2019-06-14      |            2700
    49317 | RubÃ©n              | Villamizar MejÃ­a    | 2019-06-18      |            2696
    87067 | Liliana Gladys     | GarcÃ­a Vargas       | 2019-07-03      |            2681
    50126 | Miguel             | Correa Caicedo      | 2019-07-04      |            2680     5246 | Andrea             | Serrano Mosquera    | 2019-08-10      |            2643   137392 | Emilio             | Carrillo Perdomo    | 2019-11-08      |            2553    23558 | Yuliana            | RodrÃ­guez Vargas    | 2019-11-10      |            2551
    23558 | Yuliana            | RodrÃ­guez Vargas    | 2019-11-10      |            2551
     1625 | Orlando            | Salazar BermÃºdez    | 2019-12-13      |            2518
   133431 | Fabio              | DÃ­az CuÃ©llar        | 2019-12-26      |            2505
    82408 | IvÃ¡n Jaime         | CÃ¡ceres Galvis      | 2020-02-17      |            2452
    82408 | IvÃ¡n Jaime         | CÃ¡ceres Galvis      | 2020-02-17      |            2452
    20221 | Alejandro          | NarvÃ¡ez PolanÃ­a     | 2020-02-23      |            2446
    75750 | Gloria Aura        | RÃ­os Vera           | 2020-03-03      |            2437
   119149 | Alba               | JimÃ©nez PÃ©rez       | 2020-03-25      |            2415
    65833 | Luis               | RamÃ­rez Cardona     | 2020-03-25      |            2415
     4675 | Alejandra          | Molina Torres       | 2020-03-27      |            2413   131487 | Francisco          | Castillo Henao      | 2020-04-09      |            2400    57446 | HÃ©ctor             | Ibarra Ãlvarez      | 2020-04-13      |            23-96
   122172 | Ãlvaro             | Correa RÃ­os         | 2020-05-17      |            23-62
     6320 | Luisa              | Caicedo Restrepo    | 2020-06-09      |            2339     6320 | Luisa              | Caicedo Restrepo    | 2020-06-09      |            2339   124085 | Wilmer             | Ortiz Betancur      | 2020-06-09      |            2339    13262 | Antonio            | DÃ­az VÃ©lez          | 2020-07-04      |            2314
    13262 | Antonio            | DÃ­az VÃ©lez          | 2020-07-04      |            2314
    26952 | Elsa               | MejÃ­a Vera          | 2020-07-24      |            2294
    31509 | Aura               | Castillo Henao      | 2020-08-08      |            2279    31509 | Aura               | Castillo Henao      | 2020-08-08      |            2279    42854 | Javier             | GonzÃ¡lez Zuluaga    | 2020-09-01      |            2255
    37666 | Fernando           | Galvis Duarte       | 2020-09-13      |            2243    37666 | Fernando           | Galvis Duarte       | 2020-09-13      |            2243    37666 | Fernando           | Galvis Duarte       | 2020-09-13      |            2243    37666 | Fernando           | Galvis Duarte       | 2020-09-13      |            2243    72088 | Mateo              | Henao Carrillo      | 2020-09-25      |            2231   144172 | Emilio             | BermÃºdez Rojas      | 2020-10-04      |            2222
   140042 | MÃ³nica Martha      | Molina Molina       | 2020-10-14      |            2212
   107991 | Erika              | RÃ­os SuÃ¡rez         | 2020-10-22      |            2204
    11280 | Adriana            | Mosquera Ospina     | 2020-10-28      |            2198    11280 | Adriana            | Mosquera Ospina     | 2020-10-28      |            2198    39404 | Javier             | PinzÃ³n JimÃ©nez      | 2020-10-28      |            2198
   134033 | Rafael             | Romero Prada        | 2020-11-04      |            2191    61603 | Mauricio Carlos    | Carrillo Jaimes     | 2020-11-06      |            2189    96215 | Nubia              | CÃ¡rdenas Benavides  | 2020-11-16      |            2179
    58818 | Fabio              | Bastidas Ruiz       | 2020-11-16      |            2179    36712 | AncÃ­zar            | Arango Silva        | 2020-11-24      |            2171
    86632 | Ramiro             | Zuluaga Duque       | 2020-11-24      |            2171   108845 | Fanny Nubia        | SuÃ¡rez Rojas        | 2020-11-26      |            2169
    12563 | Fernando           | SÃ¡nchez Agudelo     | 2020-12-29      |            2136
   112474 | Pedro              | Trujillo VÃ©lez      | 2021-01-06      |            2128
    79587 | Luisa              | Montoya MejÃ­a       | 2021-01-12      |            2122
    79587 | Luisa              | Montoya MejÃ­a       | 2021-01-12      |            2122
    37008 | Esteban            | Salazar Parra       | 2021-01-22      |            2112     2716 | Gloria             | MarÃ­n Rivera        | 2021-01-28      |            2106
    68477 | Liliana            | PÃ©rez Parra         | 2021-01-31      |            2103
     8485 | AncÃ­zar Cristian   | PolanÃ­a Delgado     | 2021-02-24      |            2079
    18487 | Mauricio           | PeÃ±a Bastidas       | 2021-03-21      |            2054
    71269 | Dora LucÃ­a         | Uribe Arango        | 2021-04-18      |            2026
   139037 | Carlos Mario       | Villamizar Carrillo | 2021-05-01      |            2013    41311 | Hernando Miguel    | JimÃ©nez Restrepo    | 2021-05-02      |            2012
   127305 | Daniela            | Lozano Castro       | 2021-05-04      |            2010   127305 | Daniela            | Lozano Castro       | 2021-05-04      |            2010    43464 | Gloria             | Tovar Benavides     | 2021-05-16      |            1998    61995 | Ricardo            | Castro Contreras    | 2021-06-18      |            1965    61995 | Ricardo            | Castro Contreras    | 2021-06-18      |            1965    61995 | Ricardo            | Castro Contreras    | 2021-06-18      |            1965   124756 | Luz                | NiÃ±o Guerrero       | 2021-06-20      |            1963
(368 filas
*/