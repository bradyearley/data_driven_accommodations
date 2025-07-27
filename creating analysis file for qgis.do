*florist analysis merge file
clear
import excel "C:\Users\bearley2\Downloads\florist_analysis.xlsx", sheet("Sheet1") firstrow
sort location_name city region street_address postal_code
save florist_analysis.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\ar_florist_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using florist_analysis.dta
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
save florist_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\co_florist_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using florist_analysis_merge.dta
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
save florist_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\nm_florist_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using florist_analysis_merge.dta
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
save florist_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\ok_florist_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using florist_analysis_merge.dta
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
save florist_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\utah_florist_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using florist_analysis_merge.dta
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
drop if geoid==.
save florist_analysis_merge.dta, replace
export delimited using florist_analysis_merge.csv, replace

*baker analysis merge file
clear
import excel "C:\Users\bearley2\Downloads\baker_analysis.xlsx", sheet("Sheet2")
rename A location_name
rename B city
rename C region
rename D street_address
rename E postal_code
rename H call_time
rename I call_date
rename J responded
rename K willing_to_participate
rename L weddings
rename M restrictions
rename N notes
rename O email_time
rename P email
rename Q email_date
rename R email_response
rename S email_wedding
rename T email_restriction
rename U email_note
sort location_name city region street_address postal_code
save baker_analysis.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\ar_baker_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using baker_analysis.dta
drop if _merge==1
sort location_name city region street_address postal_code
save baker_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\co_baker_clean.csv"
sort location_name city region street_address postal_code
clear
use baker_analysis_merge.dta
drop _merge
sort location_name city region street_address postal_code
save baker_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\co_baker_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using baker_analysis_merge.dta
drop if _merge==1
tab _merge
drop _merge
sort location_name city region street_address postal_code
save baker_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\nm_baker_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using baker_analysis_merge.dta
tab _merge
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
save baker_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\ok_baker_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using baker_analysis_merge.dta
tab _merge
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
save baker_analysis_merge.dta, replace
clear
import delimited "C:\Users\bearley2\Documents\utah_baker_clean.csv"
sort location_name city region street_address postal_code
merge location_name city region street_address postal_code using baker_analysis_merge.dta
tab _merge
drop if _merge==1
drop _merge
sort location_name city region street_address postal_code
drop if geoid==.
save baker_analysis_merge.dta, replace
export delimited using baker_analysis_merge.csv, replace