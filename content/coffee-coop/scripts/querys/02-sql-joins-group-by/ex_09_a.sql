-- Exercise 09 - a
-- Municipalities with more than 5 registered farms ordered by farm count descending

SELECT
    T2.municipality_name AS municipality,
    COUNT(T1.farm_id) AS total_farms
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
GROUP BY T2.municipality_name
HAVING COUNT(T1.farm_id) > 5
ORDER BY total_farms DESC;

/*
        municipality         | total_farms
-----------------------------+-------------
 Guadalupe                   |        1516
 Palestina                   |        1506
 Balboa                      |        1360
 ElÃ­as                       |        1160
 SuÃ¡rez                      |        1156
 Teruel                      |        1132
 Saladoblanco                |        1130
 YaguarÃ¡                     |        1128
 Santa MarÃ­a                 |        1121
 Neiva                       |        1112
 Pital                       |        1111
 La Argentina                |        1107
 Paicol                      |        1106
 Palermo                     |        1103
 Agrado                      |        1103
 Aipe                        |        1101
 NÃ¡taga                      |        1098
 Altamira                    |        1093
 Hobo                        |        1093
 Isnos                       |        1091
 Tello                       |        1090
 TimanÃ¡                      |        1083
 Rivera                      |        1082
 Argelia                     |        1077
 Pitalito                    |        1068
 Suaza                       |        1063
 Tesalia                     |        1062
 Oporapa                     |        1060
 Villavieja                  |        1054
 San AgustÃ­n                 |        1050
 Tarqui                      |        1048
 Algeciras                   |        1045
 Campoalegre                 |        1039
 Ãquira                      |        1037
 GarzÃ³n                      |        1024
 Baraya                      |        1024
 Gigante                     |        1024
 Acevedo                     |        1001
 Colombia                    |         986
 La Plata                    |         939
 BolÃ­var                     |         907
 La Virginia                 |         891
 Santuario                   |         866
 Dosquebradas                |         864
 La Celia                    |         849
 Santa Rosa De Cabal         |         839
 Marsella                    |         839
 Pueblo Rico                 |         833
 CÃ³rdoba                     |         827
 QuinchÃ­a                    |         817
 San Luis                    |         803
 El Tambo                    |         790
 GuÃ¡tica                     |         781
 BelÃ©n De UmbrÃ­a             |         776
 Pereira                     |         770
 La UniÃ³n                    |         769
 MistratÃ³                    |         764
 ApÃ­a                        |         748
 Armenia                     |         734
 Sucre                       |         719
 Salamina                    |         693
 PÃ¡cora                      |         661
 Florencia                   |         660
 Villarrica                  |         653
 La Vega                     |         651
 La Merced                   |         647
 Buenavista                  |         646
 Piamonte                    |         641
 SamanÃ¡                      |         641
 Toledo                      |         640
 SupÃ­a                       |         636
 Rosas                       |         632
 Aranzazu                    |         632
 Natagaima                   |         631
 Icononzo                    |         631
 Ortega                      |         629
 Marquetalia                 |         626
 Casabianca                  |         626
 Marulanda                   |         625
 Neira                       |         624
 LÃ­bano                      |         623
 San JosÃ©                    |         623
 Chaparral                   |         620
 Marmato                     |         617
 Rioblanco                   |         616
 Herveo                      |         615
 IbaguÃ©                      |         614
 Norcasia                    |         613
 Quimbaya                    |         611
 Anserma                     |         610
 Aguadas                     |         609
 Palocabildo                 |         608
 Dolores                     |         608
 Filadelfia                  |         606
 Planadas                    |         603
 AnzoÃ¡tegui                  |         601
 Pijao                       |         600
 Venadillo                   |         600
 Ataco                       |         599
 Victoria                    |         599
 Villahermosa                |         596
 Flandes                     |         596
 NariÃ±o                      |         596
 Manzanares                  |         595
 Salento                     |         595
 Espinal                     |         594
 CalarcÃ¡                     |         594
 La Dorada                   |         593
 PopayÃ¡n                     |         591
 ChinchinÃ¡                   |         591
 Almaguer                    |         591
 Viterbo                     |         590
 San SebastiÃ¡n De Mariquita  |         588
 Cajamarca                   |         587
 Rovira                      |         587
 Alvarado                    |         585
 Santa Isabel                |         585
 Alpujarra                   |         585
 Melgar                      |         585
 Risaralda                   |         584
 Valle De San Juan           |         583
 Fresno                      |         582
 Ambalema                    |         582
 PÃ¡ez                        |         580
 Carmen De ApicalÃ¡           |         580
 PuracÃ©                      |         580
 PurificaciÃ³n                |         578
 Piedras                     |         578
 Roncesvalles                |         576
 Padilla                     |         576
 Cunday                      |         574
 Circasia                    |         574
 Murillo                     |         573
 Puerto Tejada               |         573
 GuachenÃ©                    |         572
 Coyaima                     |         572
 CajibÃ­o                     |         571
 InzÃ¡                        |         571
 Santa Rosa                  |         570
 Santa BÃ¡rbara               |         569
 GÃ©nova                      |         569
 Sotara                      |         569
 Riosucio                    |         566
 Montenegro                  |         566
 LÃ³pez De Micay              |         565
 BelalcÃ¡zar                  |         565
 SaldaÃ±a                     |         564
 Manizales                   |         564
 TimbÃ­o                      |         562
 Honda                       |         561
 Coello                      |         560
 Morales                     |         560
 Buenos Aires                |         557
 Armero Guayabal             |         556
 ToribÃ­o                     |         554
 Pensilvania                 |         554
 GuapÃ­                       |         553
 Santander De Quilichao      |         553
 San Antonio                 |         552
 TotorÃ³                      |         551
 LÃ©rida                      |         550
 Corinto                     |         550
 PatÃ­a                       |         548
 VillamarÃ­a                  |         547
 La Sierra                   |         547
 San SebastiÃ¡n               |         545
 JambalÃ³                     |         543
 Prado                       |         541
 Villa Rica                  |         540
 Mercaderes                  |         533
 Filandia                    |         531
 PiendamÃ³                    |         523
 Caldono                     |         523
 Guamo                       |         520
 La Tebaida                  |         519
 Caloto                      |         517
 TimbiquÃ­                    |         513
 Miranda                     |         513
 Falan                       |         508
 Silvia                      |         494
 San Cayetano                |         425
 Granada                     |         406
 ConcepciÃ³n                  |         404
 Barbosa                     |         397
 Concordia                   |         388
 Betulia                     |         385
 Arboledas                   |         384
 Venecia                     |         383
 Ragonvalia                  |         377
 Villa Caro                  |         372
 ChinÃ¡cota                   |         369
 Los Patios                  |         369
 Pamplona                    |         368
 Villa Del Rosario           |         367
 La Playa                    |         361
 Teorama                     |         360
 Rionegro                    |         360
 Bochalema                   |         360
 Labateca                    |         358
 Gramalote                   |         356
 Santiago                    |         356
 El Zulia                    |         356
 San Calixto                 |         349
 CÃ¡cota                      |         345
 Mutiscua                    |         345
 TibÃº                        |         342
 OcaÃ±a                       |         339
 HacarÃ­                      |         339
 La Victoria                 |         336
 ChitagÃ¡                     |         334
 El Tarra                    |         333
 TarazÃ¡                      |         333
 Toro                        |         333
 Salazar                     |         332
 HerrÃ¡n                      |         332
 Ãbrego                      |         330
 Sardinata                   |         330
 Lourdes                     |         330
 Silos                       |         329
 La Paz                      |         327
 Pamplonita                  |         326
 San Francisco               |         324
 Puerto Santander            |         323
 Candelaria                  |         323
 ConvenciÃ³n                  |         321
 El Carmen                   |         319
 Cucutilla                   |         315
 Restrepo                    |         313
 Obando                      |         311
 CÃ¡chira                     |         311
 La Esperanza                |         310
 CÃºcuta                      |         308
 CaÃ±asgordas                 |         307
 Albania                     |         304
 ValparaÃ­so                  |         304
 Caldas                      |         304
 Pradera                     |         302
 Ciudad BolÃ­var              |         302
 Bucarasica                  |         299
 AlbÃ¡n                       |         299
 El Dovio                    |         298
 Marinilla                   |         297
 Turbo                       |         296
 Yumbo                       |         293
 Versalles                   |         291
 Durania                     |         291
 YolombÃ³                     |         290
 AndalucÃ­a                   |         289
 Dagua                       |         288
 Ulloa                       |         288
 Segovia                     |         287
 Urrao                       |         287
 La Ceja                     |         286
 CocornÃ¡                     |         285
 Sevilla                     |         285
 El Bagre                    |         285
 ItagÃ¼Ã­                      |         285
 Caicedo                     |         285
 Remedios                    |         284
 Caucasia                    |         284
 El Ãguila                   |         284
 Campamento                  |         284
 Calima                      |         284
 JericÃ³                      |         284
 Ricaurte                    |         283
 AlcalÃ¡                      |         283
 BriceÃ±o                     |         282
 Caicedonia                  |         281
 Dabeiba                     |         281
 CaracolÃ­                    |         280
 Retiro                      |         280
 JamundÃ­                     |         280
 Palmira                     |         279
 Cali                        |         279
 Mosquera                    |         279
 GuatapÃ©                     |         278
 Peque                       |         278
 AngelÃ³polis                 |         277
 AnorÃ­                       |         276
 SonsÃ³n                      |         276
 Buenaventura                |         275
 Zarzal                      |         275
 NechÃ­                       |         274
 Ansermanuevo                |         274
 Vijes                       |         273
 GuacarÃ­                     |         271
 San Pedro                   |         270
 San Vicente Ferrer          |         270
 San Bernardo                |         270
 Fredonia                    |         270
 YalÃ­                        |         270
 Abejorral                   |         268
 San Pedro De Los Milagros   |         268
 CÃ¡ceres                     |         267
 JardÃ­n                      |         267
 MutatÃ¡                      |         267
 Yarumal                     |         266
 RiofrÃ­o                     |         265
 MedellÃ­n                    |         265
 Copacabana                  |         264
 ApartadÃ³                    |         264
 Roldanillo                  |         263
 Bugalagrande                |         263
 Puerto BerrÃ­o               |         263
 Santa FÃ© De Antioquia       |         263
 Ginebra                     |         263
 Angostura                   |         263
 San Carlos                  |         263
 SopetrÃ¡n                    |         263
 Florida                     |         262
 Sabanalarga                 |         261
 MurindÃ³                     |         261
 La Estrella                 |         261
 Giraldo                     |         261
 Carepa                      |         261
 San Pedro De UrabÃ¡          |         260
 Cisneros                    |         260
 Villanueva                  |         259
 EbÃ©jico                     |         259
 Arboletes                   |         259
 Bello                       |         259
 ChigorodÃ³                   |         259
 BuriticÃ¡                    |         259
 Andes                       |         258
 TuluÃ¡                       |         257
 San JerÃ³nimo                |         257
 EntrerrÃ­os                  |         256
 Belmira                     |         256
 Sabaneta                    |         255
 San AndrÃ©s De CuerquÃ­a      |         255
 Carolina                    |         255
 VegachÃ­                     |         254
 Pasto                       |         253
 Guadalajara De Buga         |         252
 El Charco                   |         252
 Valdivia                    |         251
 DonmatÃ­as                   |         251
 Funes                       |         251
 YondÃ³                       |         250
 Uramita                     |         250
 AnzÃ¡                        |         250
 Zaragoza                    |         250
 El Santuario                |         249
 La Pintada                  |         248
 Trujillo                    |         248
 Linares                     |         248
 Girardota                   |         247
 San Juan De UrabÃ¡           |         247
 Envigado                    |         246
 NecoclÃ­                     |         245
 Frontino                    |         245
 Hispania                    |         245
 El PeÃ±ol                    |         245
 Yotoco                      |         244
 Guarne                      |         244
 AncuyÃ¡                      |         244
 Amalfi                      |         244
 Ituango                     |         243
 Montebello                  |         243
 Cartago                     |         243
 PotosÃ­                      |         242
 Caramanta                   |         242
 Heliconia                   |         242
 Santa Rosa De Osos          |         242
 Guaitarilla                 |         241
 El Cerrito                  |         241
 El TablÃ³n De GÃ³mez          |         241
 El Carmen De Viboral        |         241
 San JosÃ© De La MontaÃ±a      |         241
 Pueblorrico                 |         240
 Puerto Nare                 |         240
 Puerto Triunfo              |         239
 La Cumbre                   |         239
 AbriaquÃ­                    |         238
 AlejandrÃ­a                  |         238
 Tarso                       |         236
 Barbacoas                   |         236
 Cabrera                     |         235
 La Tola                     |         234
 Yacuanquer                  |         234
 Olaya                       |         234
 El Rosario                  |         232
 TÃ¡mesis                     |         232
 Salgar                      |         231
 San MartÃ­n                  |         231
 Santo Domingo               |         231
 La Llanada                  |         231
 La Florida                  |         230
 TÃºquerres                   |         229
 San Roque                   |         229
 MagÃ¼Ã­                       |         229
 BelÃ©n                       |         229
 Mallama                     |         227
 Arboleda                    |         226
 CuaspÃºd                     |         225
 Olaya Herrera               |         225
 El Cairo                    |         224
 Providencia                 |         224
 Betania                     |         223
 San Lorenzo                 |         223
 GÃ³mez Plata                 |         222
 Leiva                       |         221
 Contadero                   |         221
 TitiribÃ­                    |         221
 PeÃ±ol                       |         220
 Iles                        |         218
 Pupiales                    |         217
 Guachucal                   |         217
 VigÃ­a Del Fuerte            |         217
 San Rafael                  |         216
 Santacruz                   |         215
 Puerres                     |         215
 Taminango                   |         214
 SandonÃ¡                     |         212
 GualmatÃ¡n                   |         210
 ColÃ³n                       |         210
 Policarpa                   |         210
 AmagÃ¡                       |         209
 GonzÃ¡lez                    |         209
 El PeÃ±Ã³n                    |         208
 Aldana                      |         207
 Maceo                       |         207
 Ospina                      |         207
 RÃ­o De Oro                  |         207
 San Alberto                 |         205
 Cumbal                      |         205
 ConsacÃ¡                     |         204
 Manaure BalcÃ³n Del Cesar    |         204
 Roberto PayÃ¡n               |         203
 El Paso                     |         203
 Los Andes                   |         202
 Tangua                      |         200
 ChachagÃ¼Ã­                   |         200
 San AndrÃ©s De Tumaco        |         199
 ImuÃ©s                       |         199
 Liborina                    |         198
 Cumbitara                   |         197
 ChiriguanÃ¡                  |         197
 Francisco Pizarro           |         196
 San Pedro De Cartago        |         195
 Tamalameque                 |         193
 San Diego                   |         192
 La Jagua De Ibirico         |         192
 Ipiales                     |         191
 Buesaco                     |         191
 La Cruz                     |         189
 Pelaya                      |         188
 Samaniego                   |         187
 Bosconia                    |         186
 Becerril                    |         184
 El Copey                    |         178
 San Pablo                   |         175
 AgustÃ­n Codazzi             |         174
 Valledupar                  |         174
 Gamarra                     |         172
 Astrea                      |         171
 Aguachica                   |         169
 Pueblo Bello                |         168
 Confines                    |         167
 Sapuyes                     |         166
 Chimichagua                 |         165
 Pailitas                    |         164
 VÃ©lez                       |         164
 San JoaquÃ­n                 |         157
 Guaca                       |         154
 Guamal                      |         153
 Puente Nacional             |         153
 La Gloria                   |         152
 GirÃ³n                       |         152
 Barichara                   |         151
 San Vicente De ChucurÃ­      |         151
 CurumanÃ­                    |         149
 JordÃ¡n                      |         149
 Tona                        |         147
 Socorro                     |         147
 El PlayÃ³n                   |         147
 Enciso                      |         146
 CuritÃ­                      |         146
 ContrataciÃ³n                |         146
 CharalÃ¡                     |         146
 JesÃºs MarÃ­a                 |         145
 Cerrito                     |         145
 California                  |         144
 Floridablanca               |         143
 Cimitarra                   |         143
 CepitÃ¡                      |         143
 Vetas                       |         142
 Palmas Del Socorro          |         141
 La Belleza                  |         141
 PÃ¡ramo                      |         141
 Ocamonte                    |         141
 Palmar                      |         139
 Pinchote                    |         139
 Sabana De Torres            |         138
 CarcasÃ­                     |         138
 Zapatoca                    |         137
 Onzaga                      |         137
 GuavatÃ¡                     |         137
 Bucaramanga                 |         137
 GalÃ¡n                       |         136
 San Miguel                  |         136
 Oiba                        |         136
 Lebrija                     |         135
 Zona Bananera               |         135
 Hato                        |         135
 Capitanejo                  |         134
 Coromoro                    |         134
 Aracataca                   |         133
 Barrancabermeja             |         133
 GÃ¡mbita                     |         132
 El Guacamayo                |         132
 Cerro De San Antonio        |         131
 FloriÃ¡n                     |         131
 AriguanÃ­                    |         130
 CiÃ©naga                     |         129
 FundaciÃ³n                   |         129
 Matanza                     |         129
 MÃ¡laga                      |         129
 GuapotÃ¡                     |         128
 Piedecuesta                 |         128
 SuratÃ¡                      |         127
 Los Santos                  |         127
 LandÃ¡zuri                   |         126
 Aratoca                     |         126
 El RetÃ©n                    |         125
 PijiÃ±o Del Carmen           |         125
 Sitionuevo                  |         125
 Molagavita                  |         125
 Puebloviejo                 |         125
 Sabanas De San Ãngel        |         124
 Pedraza                     |         124
 Suaita                      |         123
 ZapayÃ¡n                     |         123
 San SebastiÃ¡n De Buenavista |         123
 Mogotes                     |         123
 Santa Helena Del OpÃ³n       |         122
 Aguada                      |         121
 ChipatÃ¡                     |         121
 Puerto Wilches              |         121
 Santa Ana                   |         121
 Chivolo                     |         121
 Plato                       |         121
 Valle De San JosÃ©           |         121
 Macaravita                  |         120
 El Banco                    |         120
 El Carmen De ChucurÃ­        |         120
 Charta                      |         119
 Remolino                    |         119
 Simacota                    |         118
 Nueva Granada               |         117
 San Benito                  |         117
 Chima                       |         116
 San JosÃ© De Miranda         |         115
 Tenerife                    |         115
 Santa Marta                 |         114
 San AndrÃ©s                  |         114
 Encino                      |         113
 Puerto Parra                |         112
 GÃ¼epsa                      |         111
 Algarrobo                   |         110
 El PiÃ±Ã³n                    |         108
 Puerto Rico                 |         107
 Pivijay                     |         105
 Soacha                      |         104
 Puerto Salgar               |         103
 Tibacuy                     |         101
 San ZenÃ³n                   |         101
 GachetÃ¡                     |          98
 SopÃ³                        |          97
 San Gil                     |          96
 VillapinzÃ³n                 |          94
 El Doncello                 |          94
 Tenjo                       |          94
 Solano                      |          94
 Cachipay                    |          93
 Morelia                     |          92
 Nilo                        |          91
 San Juan De Rioseco         |          90
 Santa BÃ¡rbara De Pinto      |          89
 GachalÃ¡                     |          88
 Guayabal De SÃ­quima         |          87
 TocancipÃ¡                   |          87
 MachetÃ¡                     |          87
 Funza                       |          87
 Tabio                       |          87
 FacatativÃ¡                  |          87
 Tena                        |          86
 Paratebueno                 |          86
 Paime                       |          85
 SibatÃ©                      |          85
 GuachetÃ¡                    |          85
 BelÃ©n De Los AndaquÃ­es      |          85
 Guatavita                   |          84
 El Colegio                  |          84
 CajicÃ¡                      |          84
 La Jagua Del Pilar          |          84
 GachancipÃ¡                  |          84
 Ãštica                       |          84
 ZipacÃ³n                     |          83
 YacopÃ­                      |          83
 Riohacha                    |          83
 ZipaquirÃ¡                   |          82
 Subachoque                  |          82
 Barrancas                   |          81
 Gama                        |          81
 Anapoima                    |          81
 Dibulla                     |          81
 Sasaima                     |          81
 Cogua                       |          81
 Fosca                       |          81
 El Rosal                    |          80
 Cota                        |          80
 Hatonuevo                   |          80
 Vergara                     |          80
 Nocaima                     |          80
 Bituima                     |          80
 VillagÃ³mez                  |          79
 Guasca                      |          79
 CÃ¡queza                     |          79
 Madrid                      |          79
 JunÃ­n                       |          78
 UbalÃ¡                       |          78
 Silvania                    |          78
 FÃ³meque                     |          78
 SesquilÃ©                    |          78
 Susa                        |          78
 Villeta                     |          78
 VianÃ­                       |          78
 Tibirita                    |          77
 Pacho                       |          77
 Simijaca                    |          77
 Anolaima                    |          76
 Agua De Dios                |          76
 BojacÃ¡                      |          75
 Suesca                      |          75
 Medina                      |          75
 BeltrÃ¡n                     |          75
 Villa De San Diego De UbatÃ© |          75
 MilÃ¡n                       |          75
 Quebradanegra               |          74
 San Antonio Del Tequendama  |          74
 PulÃ­                        |          74
 San Vicente Del CaguÃ¡n      |          74
 ChaguanÃ­                    |          74
 Quetame                     |          73
 Girardot                    |          73
 La PeÃ±a                     |          73
 Nimaima                     |          73
 Tausa                       |          73
 Cartagena Del ChairÃ¡        |          72
 Pandi                       |          72
 TopaipÃ­                     |          72
 Lenguazaque                 |          72
 Une                         |          72
 CucunubÃ¡                    |          72
 Sutatausa                   |          71
 FÃºquene                     |          71
 Manaure                     |          71
 La Calera                   |          71
 Quipile                     |          71
 Maicao                      |          70
 Ubaque                      |          70
 Manta                       |          70
 El Molino                   |          70
 NemocÃ³n                     |          70
 SupatÃ¡                      |          70
 ChÃ­a                        |          70
 La Palma                    |          68
 ArbelÃ¡ez                    |          68
 ViotÃ¡                       |          67
 FusagasugÃ¡                  |          67
 Curillo                     |          67
 La Mesa                     |          67
 Chipaque                    |          66
 GutiÃ©rrez                   |          66
 Solita                      |          66
 Uribia                      |          65
 JerusalÃ©n                   |          65
 Fonseca                     |          64
 San Juan Del Cesar          |          63
 Pasca                       |          63
 Apulo                       |          63
 El PaujÃ­l                   |          63
 CaparrapÃ­                   |          62
 San JosÃ© Del Fragua         |          62
 Fuente De Oro               |          60
 Tocaima                     |          60
 La MontaÃ±ita                |          60
 Carmen De Carupa            |          59
 Guaduas                     |          57
 Urumita                     |          57
 GuataquÃ­                    |          55
 Guayabetal                  |          54
 ChocontÃ¡                    |          54
 DistracciÃ³n                 |          53
 El Castillo                 |          53
 ChoachÃ­                     |          52
 Puerto Lleras               |          52
 San Juanito                 |          49
 Uribe                       |          48
 Mesetas                     |          48
 La Macarena                 |          47
 Sora                        |          47
 Barranca De UpÃ­a            |          47
 El Calvario                 |          47
 MapiripÃ¡n                   |          45
 Mongua                      |          45
 San Juan De Arama           |          44
 TununguÃ¡                    |          43
 SÃ¡chica                     |          43
 El Dorado                   |          40
 Cucaita                     |          40
 Guacamayas                  |          40
 Berbeo                      |          40
 TÃ³paga                      |          40
 Chitaraque                  |          39
 RamiriquÃ­                   |          38
 MoniquirÃ¡                   |          38
 Boavita                     |          38
 Puerto Concordia            |          38
 SocotÃ¡                      |          38
 Somondoco                   |          38
 SutamarchÃ¡n                 |          38
 Paipa                       |          37
 Vistahermosa                |          37
 Cabuyaro                    |          37
 LejanÃ­as                    |          37
 Motavita                    |          37
 Cumaral                     |          36
 Santa Rosa De Viterbo       |          36
 San Carlos De Guaroa        |          36
 San Luis De Gaceno          |          35
 Puerto GaitÃ¡n               |          35
 GachantivÃ¡                  |          35
 San Mateo                   |          35
 TinjacÃ¡                     |          35
 San Luis De Cubarral        |          35
 San Eduardo                 |          34
 Puerto BoyacÃ¡               |          34
 Nuevo ColÃ³n                 |          34
 Sutatenza                   |          34
 Santa SofÃ­a                 |          34
 CÃ³mbita                     |          34
 RondÃ³n                      |          33
 El Cocuy                    |          33
 TurmequÃ©                    |          33
 Pajarito                    |          33
 Puerto LÃ³pez                |          33
 CiÃ©nega                     |          32
 GÃ¼icÃ¡n                      |          32
 Sogamoso                    |          32
 TutazÃ¡                      |          32
 SotaquirÃ¡                   |          32
 AcacÃ­as                     |          32
 Castilla La Nueva           |          31
 Nobsa                       |          31
 TibanÃ¡                      |          31
 Villa De Leyva              |          31
 SoatÃ¡                       |          31
 Pesca                       |          31
 Almeida                     |          31
 SaboyÃ¡                      |          30
 Garagoa                     |          30
 Campohermoso                |          30
 CubarÃ¡                      |          29
 Duitama                     |          29
 Firavitoba                  |          29
 BetÃ©itiva                   |          29
 Cerinza                     |          29
 Miraflores                  |          29
 Chita                       |          29
 SoracÃ¡                      |          29
 Siachoque                   |          28
 MonguÃ­                      |          28
 Paz De RÃ­o                  |          28
 Pisba                       |          28
 MaripÃ­                      |          28
 SamacÃ¡                      |          28
 SusacÃ³n                     |          28
 La Uvita                    |          28
 Iza                         |          28
 QuÃ­pama                     |          27
 Socha                       |          27
 Chivor                      |          27
 La Capilla                  |          27
 Santana                     |          27
 Otanche                     |          27
 Sativasur                   |          26
 Tipacoque                   |          26
 Aquitania                   |          26
 Corrales                    |          26
 Tenza                       |          26
 TogÃ¼Ã­                       |          26
 ChiquinquirÃ¡                |          26
 BusbanzÃ¡                    |          26
 Coper                       |          25
 El Espino                   |          25
 CovarachÃ­a                  |          25
 Muzo                        |          25
 Labranzagrande              |          25
 Toca                        |          25
 Zetaquira                   |          24
 Jenesano                    |          24
 Ventaquemada                |          24
 Arcabuco                    |          24
 GÃ¡meza                      |          24
 Macanal                     |          23
 Tibasosa                    |          23
 Paya                        |          23
 Villavicencio               |          23
 RÃ¡quira                     |          23
 Panqueba                    |          23
 Tasco                       |          23
 San JosÃ© De Pare            |          23
 San Miguel De Sema          |          22
 ChÃ­quiza                    |          22
 Ãšmbita                      |          22
 Floresta                    |          22
 Sativanorte                 |          22
 Chinavita                   |          22
 Tota                        |          21
 BoyacÃ¡                      |          21
 ViracachÃ¡                   |          21
 Pauna                       |          20
 ChivatÃ¡                     |          20
 CuÃ­tiva                     |          20
 GuayatÃ¡                     |          20
 Pachavita                   |          20
 OicatÃ¡                      |          19
 Guateque                    |          19
 Chiscas                     |          18
 Tuta                        |          17
 Tunja                       |          16
 San Pablo De Borbur         |          15
(834 filas)
*/