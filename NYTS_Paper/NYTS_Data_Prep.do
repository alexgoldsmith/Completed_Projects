//Recode 2017 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2017.dta", clear
clonevar age = Qn1 //How old are you?
clonevar gender = Qn2 //What is your sex?
clonevar grade = Qn3 //What grade are you in?
clonevar days_smoked_cigs = Qn11 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar days_used_ENDS = Qn31 //During the past 30 days, on how many days did you use e-cigarettes?
clonevar ever_used_ENDS = Qn28 //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if days_used_ENDS > 1 //Respondant has used ENDS in past 30 days
destring student, replace
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2017_recoded.dta", replace

//Recode 2016 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2016.dta", clear
clonevar age = Qn1 //How old are you?
clonevar gender = Qn2 //What is your sex?
clonevar grade = Qn3 //What grade are you in?
clonevar days_smoked_cigs = Qn13 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar days_used_ENDS = Qn31 //During the past 30 days, on how many days did you use e-cigarettes?
clonevar ever_used_ENDS = Qn26 //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if days_used_ENDS > 1 //Respondant has used ENDS in past 30 days
destring student, replace
replace student = student + 27400
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2016_recoded.dta", replace

//Recode 2015 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2015.dta", clear
clonevar age = Qn1 //How old are you?
clonevar gender = Qn2 //What is your sex?
clonevar grade = Qn3 //What grade are you in?
clonevar days_smoked_cigs = Qn13 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar days_used_ENDS = Qn32 //During the past 30 days, on how many days did you use e-cigarettes?
clonevar ever_used_ENDS = Qn28 //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if days_used_ENDS > 1 //Respondant has used ENDS in past 30 days
destring student, replace
replace student = student + 58222
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2015_recoded.dta", replace

//Recode 2014 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2014.dta", clear
clonevar age = qn1 //How old are you?
clonevar gender = qn2 //What is your sex?
clonevar grade = qn3 //What grade are you in?
clonevar days_smoked_cigs = qn13 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar days_used_ENDS = qn35 //During the past 30 days, on how many days did you use e-cigarettes?
clonevar ever_used_ENDS = qn31 //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if days_used_ENDS > 1 //Respondant has used ENDS in past 30 days
destring StudntID, replace
gen student = StudntID - 2000000 + 83218
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2014_recoded.dta", replace

//Recode 2013 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2013.dta", clear
clonevar age = qn1 //How old are you?
clonevar gender = qn2 //What is your sex?
clonevar grade = qn3 //What grade are you in?
clonevar days_smoked_cigs = qn15 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar ever_used_ENDS = qn36i //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if qn37i == 1 //Respondant has used ENDS in past 30 days
rename State_code State_Code
destring StudntID, replace
gen student = StudntID + 105225
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2013_recoded.dta", replace

//Recode 2012 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2012.dta", clear
clonevar age = qn1 //How old are you?
clonevar gender = qn2 //What is your sex?
clonevar grade = qn3 //What grade are you in?
clonevar days_smoked_cigs = qn13 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar ever_used_ENDS = qn37g //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if qn38g == 1 //Respondant has used ENDS in past 30 days
destring StudntID, replace
gen student = StudntID + 123631
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2012_recoded.dta", replace

//Recode 2011 variables
use "U:\Documents\NYTS_Paper\NYTS_merged_data\NYTS2011.dta", clear
clonevar age = qn1 //How old are you?
clonevar gender = qn2 //What is your sex?
clonevar grade = qn3 //What grade are you in?
clonevar days_smoked_cigs = qn13 //During the past 30 days, on how many days did you smoke cigarettes?
clonevar ever_used_ENDS = qn36h //Have you ever used an e-cigarette, even once or twice?
gen currently_smoke_cigs = 0
replace currently_smoke_cigs = 1 if days_smoked_cigs > 1 //Respondant has smoked cigs in past 30 days
gen currently_use_ENDS = 0
replace currently_use_ENDS = 1 if qn37h == 1 //Respondant has used ENDS in past 30 days
gen student = StudntID + 148289
save "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2011_recoded.dta", replace

//Append data
use "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2017_recoded.dta", clear
append using "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2016_recoded.dta"
append using "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2015_recoded.dta"
append using "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2014_recoded.dta"
append using "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2013_recoded.dta"
append using "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2012_recoded.dta"
append using "U:\Documents\NYTS_Paper\NYTS_recoded_data\NYTS2011_recoded.dta"

//Set as pooled data
//xtset student year

//Label gender
label define gender_labels 1 "Male" 2 "Female"
label values gender gender_labels

//Label age
label define age_labels ///
	1 "9 years old" 2 "10 years old" 3 "11 years old" 4 "12 years old" 5 "13 years old" 6 "14 years old" ///
	7 "15 years old" 8 "16 years old" 9 "17 years old" 10 "18 years old" 11 "19 years old or older"
label values age age_labels

//Label grade
label define grade_labels 1 "6th" 2 "7th" 3 "8th" 4 "9th" 5 "10th" 6 "11th" 7 "12th" 8 "other"
label values grade grade_labels

//Label days_smoked_cigs
label define dsc_labels 1 "0 days" 2 "1 or 2 days" 3 "3 to 5 days" 4 "6 to 9 days" 5 "10 to 19 days" ///
	6 "20 to 29 days" 7 "All 30 days"
label values days_smoked_cigs dsc_labels

//Label days_used_ENDS
label define due_labels 1 "0 days" 2 "1 or 2 days" 3 "3 to 5 days" 4 "6 to 9 days" 5 "10 to 19 days" ///
	6 "20 to 29 days" 7 "All 30 days"
label values days_used_ENDS due_labels

//Label ever_used_ENDS
label define eue_labels 1 "Yes" 2 "No"
label values ever_used_ENDS eue_labels

//Generate Minimum Legal Sale Age Dummies
gen MLSA_18 = 0 
replace MLSA_18 = 1 if State_Code == "AL" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "AK" & (year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "AZ" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "AR" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "CA"
replace MLSA_18 = 1 if State_Code == "CO"
replace MLSA_18 = 1 if State_Code == "CT" & year == 2015
replace MLSA_18 = 1 if State_Code == "DE" & year == 2015
replace MLSA_18 = 1 if State_Code == "FL" & year == 2015
replace MLSA_18 = 1 if State_Code == "GA" & year == 2015
replace MLSA_18 = 1 if State_Code == "HI" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "ID" & (year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "IL" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "IN" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "IA" & year == 2015
replace MLSA_18 = 1 if State_Code == "KS" & (year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "LA" & year == 2015
replace MLSA_18 = 1 if State_Code == "MD" & (year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "MN"
replace MLSA_18 = 1 if State_Code == "MS" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "MO" & year == 2015
replace MLSA_18 = 1 if State_Code == "NE" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "NH"
replace MLSA_18 = 1 if State_Code == "NJ"
replace MLSA_18 = 1 if State_Code == "NY" & (year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "NC" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "OH" & year == 2015
replace MLSA_18 = 1 if State_Code == "OK" & year == 2015
replace MLSA_18 = 1 if State_Code == "RI" & year == 2015
replace MLSA_18 = 1 if State_Code == "SC" & (year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "SD" & year == 2015
replace MLSA_18 = 1 if State_Code == "TN" & (year == 2012 | year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "UT"
replace MLSA_18 = 1 if State_Code == "WV" & year == 2015
replace MLSA_18 = 1 if State_Code == "WI" & (year == 2012 | year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if State_Code == "WY" & (year == 2013 | year == 2014 | year == 2015)
replace MLSA_18 = 1 if year == 2016 | year == 2017
replace MLSA_18 = 0 if (State_Code == "ME" | State_Code == "MA" | State_Code == "MI" | State_Code == "OR") & year == 2016
encode State_Code, generate(state)

//Generate Self Service Display Ban Dummies
gen SSDB = .
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "AR"
replace SSDB = cond(year == 2017,1,0) if State_Code == "CA"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "DE"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "FL"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "HI"
replace SSDB = cond(year == 2011 | year == 2012,0,1) if State_Code == "ID"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "IL"
replace SSDB = cond(year == 2014 | year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "IN"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "IA"
replace SSDB = cond(year == 2011 | year == 2012,0,1) if State_Code == "KS"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "LA"
replace SSDB = cond(year == 2017,1,0) if State_Code == "ME"
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "MA"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "MN"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "NE"
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "NM"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "NY"
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "ND"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "OK"
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "OK"
replace SSDB = cond(year == 2015 | year == 2016 | year == 2017,1,0) if State_Code == "SD"
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "TX"
replace SSDB = cond(year == 2016 | year == 2017,1,0) if State_Code == "UT"
replace SSDB = cond(year == 2017,1,0) if State_Code == "VT"
replace SSDB = cond(year == 2011 | year == 2012,0,1) if State_Code == "WY"

//Save file
save "U:\Documents\NYTS_Paper\NYTS_Master_File.dta", replace
