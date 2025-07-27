*cleaning POI data to match census block group data
clear
use "C:\Users\bearley2\Desktop\june_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="OK"
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
forvalues i = 1/120 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/120 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/120 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA35390682"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
save oklahoma_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\may_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="OK"
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
forvalues i = 1/113 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/113 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/113 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA24660840"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "oklahoma_florist_visits.dta"
save oklahoma_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\july_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="OK"
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
forvalues i = 1/140 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/140 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/140 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA35060237"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "oklahoma_florist_visits.dta"
save oklahoma_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\august_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="OK"
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
forvalues i = 1/135 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/135 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/135 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
duplicates drop placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home, force
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA24640077"4"'
drop if census_data_clean== `"CA35202599"4"'
drop if census_data_clean== `"CA48180053"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "oklahoma_florist_visits.dta", force
save oklahoma_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\september_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="OK"
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
forvalues i = 1/138 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/138 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/138 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA48020088"4"'
drop if census_data_clean== `"CA48160193"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "oklahoma_florist_visits.dta", force
save oklahoma_florist_visits.dta, replace

clear
use "C:\Users\bearley2\Desktop\october_poi.dta"
*keeping only florists
keep if naics_code==453110
keep if region=="OK"
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
forvalues i = 1/149 {
    gen visits_`i'= substr(census_data_clean`i',15,.)
}

*replace the last number in each new variable iteration with a blank space
forvalues i = 1/149 {
    replace census_data_clean`i'= substr(census_data_clean`i',1,13)
}
forvalues i = 1/149 {
    replace census_data_clean`i'= substr(census_data_clean`i',2,13)
}
*concat census block groups back together
egen census_data_full= concat(census_data_clean1 census_data_clean2 census_data_clean3 census_data_clean4 census_data_clean5 census_data_clean6 census_data_clean7 census_data_clean8 census_data_clean9 census_data_clean10 census_data_clean11 census_data_clean12 census_data_clean13 census_data_clean14 census_data_clean15 census_data_clean16 census_data_clean17 census_data_clean18 census_data_clean19 census_data_clean20 census_data_clean21 census_data_clean22 census_data_clean23 census_data_clean24 census_data_clean25 census_data_clean26  census_data_clean27 census_data_clean28 census_data_clean29 census_data_clean30 census_data_clean31 census_data_clean32 census_data_clean33 census_data_clean34 census_data_clean35 census_data_clean36 census_data_clean37 census_data_clean38 census_data_clean39 census_data_clean40 census_data_clean41 census_data_clean42 census_data_clean43 census_data_clean44 census_data_clean45 census_data_clean46 census_data_clean47 census_data_clean48 census_data_clean49 census_data_clean50 census_data_clean51 census_data_clean52 census_data_clean53 census_data_clean54 census_data_clean55 census_data_clean56 census_data_clean57 census_data_clean58 census_data_clean59 census_data_clean60 census_data_clean61 census_data_clean62 census_data_clean63 census_data_clean64 census_data_clean65 census_data_clean66 census_data_clean67 census_data_clean68 census_data_clean69 census_data_clean70 census_data_clean71 census_data_clean72 census_data_clean73 census_data_clean74 census_data_clean75 census_data_clean76 census_data_clean77 census_data_clean78 census_data_clean79 census_data_clean80 census_data_clean81 census_data_clean82 census_data_clean83 census_data_clean84 census_data_clean85 census_data_clean86 census_data_clean87 census_data_clean88 census_data_clean89 census_data_clean90 census_data_clean91 census_data_clean92 census_data_clean93 census_data_clean94 census_data_clean95 census_data_clean96 census_data_clean97 census_data_clean98 census_data_clean99 census_data_clean100 census_data_clean101 census_data_clean102 census_data_clean103 census_data_clean104 census_data_clean105 census_data_clean106 census_data_clean107 census_data_clean108 census_data_clean109 census_data_clean110 census_data_clean111 census_data_clean112 census_data_clean113 census_data_clean114 census_data_clean115 census_data_clean116 census_data_clean117 census_data_clean118 census_data_clean119 census_data_clean120 census_data_clean121 census_data_clean122 census_data_clean123 census_data_clean124 census_data_clean125 census_data_clean126 census_data_clean127 census_data_clean128 census_data_clean129 census_data_clean130 census_data_clean131 census_data_clean132 census_data_clean133 census_data_clean134 census_data_clean135 census_data_clean136 census_data_clean137 census_data_clean138 census_data_clean139	census_data_clean140	census_data_clean141	census_data_clean142 census_data_clean143	census_data_clean144	census_data_clean145	census_data_clean146	census_data_clean147	census_data_clean148	census_data_clean149), punct(" ")
rename census_data_full GEOID
rename census_data_clean new
reshape long census_data_clean visits_, i(placekey location_name city region poi_cbg visitor_home_cbgs distance_from_home)
order census_data_clean visits_
drop if census_data_clean== `"CA48061902"4"'
destring census_data_clean, gen(geoid)
destring visits_, gen(visits)
order geoid visits
append using "oklahoma_florist_visits.dta"
sort geoid
by geoid: gen total_visits=sum(visits)
save oklahoma_florist_visits.dta, replace

*cleaning the data
drop if visitor_home_cbgs==""
save oklahoma_florist_all.dta, replace
drop if distance_from_home>100000
*save and export
save oklahoma_florist_clean.dta, replace
