*May POI file
clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part1.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part2.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part3.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part4.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part5.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part6.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part7.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part8.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part9.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part10.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part11.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part12.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part13.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part14.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part15.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part16.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part17.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part18.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part19.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part20.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part21.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part22.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part23.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part24.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part25.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part26.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part27.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part28.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace

clear
import delimited "C:\Users\bearley2\Desktop\SafeGraph\May\core_poi-geometry-patterns-part29.csv"
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using may_poi.dta, force
save may_poi.dta, replace
