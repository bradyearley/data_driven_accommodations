*June POI file
import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part1.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part2.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part3.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part4.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part5.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part6.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part7.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part8.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part9.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part10.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part11.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part12.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part13.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part14.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part15.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part16.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part17.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part18.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part19.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part20.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part21.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part22.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part23.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part24.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part25.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part26.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part27.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part28.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part29.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace

import delimited "C:\Users\bearley2\Desktop\SafeGraph\June\core_poi-geometry-patterns-part30.csv", clear 
keep if naics_code==311811 | naics_code==445291 | naics_code==453110
keep if region=="AR" | region=="CO" | region=="NM" | region=="OK" | region=="UT"
append using june_poi.dta, force
save june_poi.dta, replace