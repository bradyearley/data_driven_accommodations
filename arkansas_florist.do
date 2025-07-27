*cleaning POI data to match census block group data
clear
use "C:\Users\bearley2\Desktop\june_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="AR"
*removing the colon separator between each string element
generate census_data_clean = regexr(visitor_home_cbgs, "[:]", "")
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
forvalues i = 1/1700 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
forvalues i = 1/200 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
*removing front and back curly brackets
replace census_data_clean = regexr(census_data_clean, "[{}$]", "")
replace census_data_clean = regexr(census_data_clean, "[}$]", "")
*creating new variables based on the comma
split census_data_clean, parse(,) destring
*create variable for visit number
forvalues i = 1/161 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/161 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/161 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139 census_data_clean140 census_data_clean141 census_data_clean142 census_data_clean143 census_data_clean144 census_data_clean145 census_data_clean146 census_data_clean147 census_data_clean148 census_data_clean149 census_data_clean150 census_data_clean151 census_data_clean152 census_data_clean153 census_data_clean154 census_data_clean155 census_data_clean156 census_data_clean157 census_data_clean158 census_data_clean159 census_data_clean160 census_data_clean161), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA35180236"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
save arkansas_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\may_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="AR"
*removing the colon separator between each string element
generate census_data_clean = regexr(visitor_home_cbgs, "[:]", "")
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
forvalues i = 1/1700 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
forvalues i = 1/200 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
*removing front and back curly brackets
replace census_data_clean = regexr(census_data_clean, "[{}$]", "")
replace census_data_clean = regexr(census_data_clean, "[}$]", "")
*creating new variables based on the comma
split census_data_clean, parse(,) destring
*create variable for visit number
forvalues i = 1/178 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/178 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/178 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140	census_data_clean141	census_data_clean142 census_data_clean143	census_data_clean144	census_data_clean145	census_data_clean146	census_data_clean147	census_data_clean148	census_data_clean149	census_data_clean150	census_data_clean151	census_data_clean152	census_data_clean153	census_data_clean154	census_data_clean155	census_data_clean156	census_data_clean157	census_data_clean158	census_data_clean159	census_data_clean160	census_data_clean161	census_data_clean162	census_data_clean163	census_data_clean164	census_data_clean165	census_data_clean166	census_data_clean167	census_data_clean168	census_data_clean169	census_data_clean170	census_data_clean171	census_data_clean172	census_data_clean173	census_data_clean174	census_data_clean175	census_data_clean176	census_data_clean177	census_data_clean178), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA46020109"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "arkansas_florist_visits.dta"
save arkansas_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\july_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="AR"
*removing the colon separator between each string element
generate census_data_clean = regexr(visitor_home_cbgs, "[:]", "")
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
forvalues i = 1/1700 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
forvalues i = 1/200 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
*removing front and back curly brackets
replace census_data_clean = regexr(census_data_clean, "[{}$]", "")
replace census_data_clean = regexr(census_data_clean, "[}$]", "")
*creating new variables based on the comma
split census_data_clean, parse(,) destring
*create variable for visit number
forvalues i = 1/286 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/286 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/286 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140	census_data_clean141	census_data_clean142 census_data_clean143	census_data_clean144	census_data_clean145	census_data_clean146	census_data_clean147	census_data_clean148	census_data_clean149	census_data_clean150	census_data_clean151	census_data_clean152	census_data_clean153	census_data_clean154	census_data_clean155	census_data_clean156	census_data_clean157	census_data_clean158	census_data_clean159	census_data_clean160	census_data_clean161	census_data_clean162	census_data_clean163	census_data_clean164	census_data_clean165	census_data_clean166	census_data_clean167	census_data_clean168	census_data_clean169	census_data_clean170	census_data_clean171	census_data_clean172	census_data_clean173	census_data_clean174	census_data_clean175	census_data_clean176	census_data_clean177	census_data_clean178	census_data_clean179	census_data_clean180	census_data_clean181	census_data_clean182	census_data_clean183	census_data_clean184	census_data_clean185	census_data_clean186	census_data_clean187	census_data_clean188	census_data_clean189	census_data_clean190	census_data_clean191	census_data_clean192	census_data_clean193	census_data_clean194	census_data_clean195	census_data_clean196	census_data_clean197	census_data_clean198	census_data_clean199	census_data_clean200	census_data_clean201	census_data_clean202	census_data_clean203	census_data_clean204	census_data_clean205	census_data_clean206	census_data_clean207	census_data_clean208	census_data_clean209	census_data_clean210	census_data_clean211	census_data_clean212	census_data_clean213	census_data_clean214	census_data_clean215	census_data_clean216	census_data_clean217	census_data_clean218	census_data_clean219	census_data_clean220	census_data_clean221	census_data_clean222	census_data_clean223	census_data_clean224	census_data_clean225	census_data_clean226	census_data_clean227	census_data_clean228	census_data_clean229	census_data_clean230	census_data_clean231	census_data_clean232	census_data_clean233	census_data_clean234	census_data_clean235	census_data_clean236	census_data_clean237	census_data_clean238	census_data_clean239	census_data_clean240	census_data_clean241	census_data_clean242	census_data_clean243	census_data_clean244	census_data_clean245	census_data_clean246	census_data_clean247	census_data_clean248	census_data_clean249	census_data_clean250	census_data_clean251	census_data_clean252	census_data_clean253	census_data_clean254	census_data_clean255	census_data_clean256	census_data_clean257	census_data_clean258	census_data_clean259	census_data_clean260	census_data_clean261	census_data_clean262	census_data_clean263	census_data_clean264	census_data_clean265	census_data_clean266	census_data_clean267	census_data_clean268	census_data_clean269	census_data_clean270	census_data_clean271	census_data_clean272	census_data_clean273	census_data_clean274	census_data_clean275	census_data_clean276	census_data_clean277	census_data_clean278	census_data_clean279	census_data_clean280	census_data_clean281	census_data_clean282	census_data_clean283	census_data_clean284	census_data_clean285	census_data_clean286), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA35180236"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "arkansas_florist_visits.dta"
save arkansas_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\august_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="AR"
*removing the colon separator between each string element
generate census_data_clean = regexr(visitor_home_cbgs, "[:]", "")
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
forvalues i = 1/1700 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
forvalues i = 1/200 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
*removing front and back curly brackets
replace census_data_clean = regexr(census_data_clean, "[{}$]", "")
replace census_data_clean = regexr(census_data_clean, "[}$]", "")
*creating new variables based on the comma
split census_data_clean, parse(,) destring
*create variable for visit number
forvalues i = 1/226 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/226 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/226 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140	census_data_clean141	census_data_clean142 census_data_clean143	census_data_clean144	census_data_clean145	census_data_clean146	census_data_clean147	census_data_clean148	census_data_clean149	census_data_clean150	census_data_clean151	census_data_clean152	census_data_clean153	census_data_clean154	census_data_clean155	census_data_clean156	census_data_clean157	census_data_clean158	census_data_clean159	census_data_clean160	census_data_clean161	census_data_clean162	census_data_clean163	census_data_clean164	census_data_clean165	census_data_clean166	census_data_clean167	census_data_clean168	census_data_clean169	census_data_clean170	census_data_clean171	census_data_clean172	census_data_clean173	census_data_clean174	census_data_clean175	census_data_clean176	census_data_clean177	census_data_clean178	census_data_clean179	census_data_clean180	census_data_clean181	census_data_clean182	census_data_clean183	census_data_clean184	census_data_clean185	census_data_clean186	census_data_clean187	census_data_clean188	census_data_clean189	census_data_clean190	census_data_clean191	census_data_clean192	census_data_clean193	census_data_clean194	census_data_clean195	census_data_clean196	census_data_clean197	census_data_clean198	census_data_clean199	census_data_clean200	census_data_clean201	census_data_clean202	census_data_clean203	census_data_clean204	census_data_clean205	census_data_clean206	census_data_clean207	census_data_clean208	census_data_clean209	census_data_clean210	census_data_clean211	census_data_clean212	census_data_clean213	census_data_clean214	census_data_clean215	census_data_clean216	census_data_clean217	census_data_clean218	census_data_clean219	census_data_clean220	census_data_clean221	census_data_clean222	census_data_clean223	census_data_clean224	census_data_clean225	census_data_clean226), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
duplicates drop placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home, force
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA59150866"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "arkansas_florist_visits.dta", force
save arkansas_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\september_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="AR"
*removing the colon separator between each string element
generate census_data_clean = regexr(visitor_home_cbgs, "[:]", "")
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
forvalues i = 1/1700 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
forvalues i = 1/200 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
*removing front and back curly brackets
replace census_data_clean = regexr(census_data_clean, "[{}$]", "")
replace census_data_clean = regexr(census_data_clean, "[}$]", "")
*creating new variables based on the comma
split census_data_clean, parse(,) destring
*create variable for visit number
forvalues i = 1/214 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/214 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/214 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140	census_data_clean141	census_data_clean142 census_data_clean143	census_data_clean144	census_data_clean145	census_data_clean146	census_data_clean147	census_data_clean148	census_data_clean149	census_data_clean150	census_data_clean151	census_data_clean152	census_data_clean153	census_data_clean154	census_data_clean155	census_data_clean156	census_data_clean157	census_data_clean158	census_data_clean159	census_data_clean160	census_data_clean161	census_data_clean162	census_data_clean163	census_data_clean164	census_data_clean165	census_data_clean166	census_data_clean167	census_data_clean168	census_data_clean169	census_data_clean170	census_data_clean171	census_data_clean172	census_data_clean173	census_data_clean174	census_data_clean175	census_data_clean176	census_data_clean177	census_data_clean178	census_data_clean179	census_data_clean180	census_data_clean181	census_data_clean182	census_data_clean183	census_data_clean184	census_data_clean185	census_data_clean186	census_data_clean187	census_data_clean188	census_data_clean189	census_data_clean190	census_data_clean191	census_data_clean192	census_data_clean193	census_data_clean194	census_data_clean195	census_data_clean196	census_data_clean197	census_data_clean198	census_data_clean199	census_data_clean200	census_data_clean201	census_data_clean202	census_data_clean203	census_data_clean204	census_data_clean205	census_data_clean206	census_data_clean207	census_data_clean208	census_data_clean209	census_data_clean210	census_data_clean211	census_data_clean212	census_data_clean213	census_data_clean214), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA47080180"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "arkansas_florist_visits.dta", force
save arkansas_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\october_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="AR"
*removing the colon separator between each string element
generate census_data_clean = regexr(visitor_home_cbgs, "[:]", "")
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
forvalues i = 1/1700 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
forvalues i = 1/200 {
replace census_data_clean = regexr(census_data_clean, "[:$]", "")
}
*removing front and back curly brackets
replace census_data_clean = regexr(census_data_clean, "[{}$]", "")
replace census_data_clean = regexr(census_data_clean, "[}$]", "")
*creating new variables based on the comma
split census_data_clean, parse(,) destring
*create variable for visit number
forvalues i = 1/216 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/216 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/216 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140	census_data_clean141	census_data_clean142 census_data_clean143	census_data_clean144	census_data_clean145	census_data_clean146	census_data_clean147	census_data_clean148	census_data_clean149	census_data_clean150	census_data_clean151	census_data_clean152	census_data_clean153	census_data_clean154	census_data_clean155	census_data_clean156	census_data_clean157	census_data_clean158	census_data_clean159	census_data_clean160	census_data_clean161	census_data_clean162	census_data_clean163	census_data_clean164	census_data_clean165	census_data_clean166	census_data_clean167	census_data_clean168	census_data_clean169	census_data_clean170	census_data_clean171	census_data_clean172	census_data_clean173	census_data_clean174	census_data_clean175	census_data_clean176	census_data_clean177	census_data_clean178	census_data_clean179	census_data_clean180	census_data_clean181	census_data_clean182	census_data_clean183	census_data_clean184	census_data_clean185	census_data_clean186	census_data_clean187	census_data_clean188	census_data_clean189	census_data_clean190	census_data_clean191	census_data_clean192	census_data_clean193	census_data_clean194	census_data_clean195	census_data_clean196	census_data_clean197	census_data_clean198	census_data_clean199	census_data_clean200	census_data_clean201	census_data_clean202	census_data_clean203	census_data_clean204	census_data_clean205	census_data_clean206	census_data_clean207	census_data_clean208	census_data_clean209	census_data_clean210	census_data_clean211	census_data_clean212	census_data_clean213	census_data_clean214	census_data_clean215	census_data_clean216), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA48150135"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "arkansas_florist_visits.dta"
sort geoid
by geoid: gen total_visits=sum(visits)
save arkansas_florist_visits.dta, replace

*cleaning the data
drop if visitor_home_cbgs==""
save arkansas_florist_all.dta, replace
drop if distance_from_home>100000
*save and export
save arkansas_florist_clean.dta, replace
