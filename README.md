# data_driven_accommodations
This repository provides scripts and information to replicate the data used in "Data-Driven Accommodations: Testing Religious Exemptions in Markets of Discrimination". This file is intended to assist anyone seeking to replicate the data analysis in the paper.

At the outset, it is important to note that the data used in this article come from SafeGraph, a company that collects and organizes point of interest (POI) data including foot traffic data. This data is made available at a discounted rate to academic researchers through a platform called Dewey. Since this paper was written and the data analyzed, SafeGraph has transferred its foot traffic data to a separate company called Advan. Advan’s foot traffic data is also available through the Dewey platform and will contain all the necessary attributes to replicate the analysis here. There are 17 do files used in analyzing this data. Each is described below:

•	POI Cleaning Files: These DO files will take the raw POI data from SafeGraph’s historic Patterns dataset and provide a cleaned file for each month of data. The raw data from SafeGraph is delivered in about 30 CSV files for each month since one CSV file contains about 500,000 observations (totaling about 15 million observations per month). These cleaning files will go through each part of the total monthly data and keep only data from the relevant states (AR, CO, NM, OK, UT) and the relevant NAICS code (311811 for Florists and 445291, 453110 for Bakers). The code then combines each of these parts back into a month file, creating six total month files as shown below.

o	may_poi_cleaning.do
o	june_poi_cleaning.do
o	july_poi_cleaning.do
o	august_poi_cleaning.do
o	september_poi_cleaning.do
o	october_poi_cleaning.do

•	State Baker and Florist DO Files: With all baker and florist data organized at the month level in the relevant states, these cleaning files create a file for all bakers and all florists within each state. The final dataset is at the POI level, but the code also creates a new variable for the total number of visitors. Because of this, there are several loops and parsing code that may take some time to run.

o	arkansas_baker.do
o	arkansas_florist.do
o	colorado_baker.do
o	colorado_florist.do
o	new_mexico_baker.do
o	new_mexico_florist.do
o	oklahoma_baker.do
o	oklahoma_florist.do
o	utah_baker.do
o	utah_florist.do

•	QGIS Analysis File: This file takes all the baker and florist state files and turns them into a usable CSV file for conducting the survey and descriptive analysis. This format also lends itself well to the requirements of spatial mapping software like QGIS.

o	creating analysis file for qgis.do




