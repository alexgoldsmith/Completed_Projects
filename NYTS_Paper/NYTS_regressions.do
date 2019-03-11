/*To do:
	1) Generate dummies for flavor bans
	2) Figure out how to create lagged variables
	3) Generate variable for other tobacco use
	4) Adjust by survey weights?
	5) Include model for impact on intensity of cigarette use for smokers 
Methodological questions:
	Include state fixed effects or no?
	Include control for current e-cig or other tobacco use?
*/

use "U:\Documents\NYTS_Paper\NYTS_Master_File.dta", replace

//MLSA Effectiveness regressions
logit currently_use_ENDS MLSA_18 i.age i.gender, or
logit currently_use_ENDS MLSA_18 i.age i.gender i.year i.state, or

//MLSA Substitution regressions
logit currently_smoke_cigs MLSA_18 i.age i.gender, or
logit currently_smoke_cigs MLSA_18 i.age i.gender i.year i.state, or
logit currently_smoke_cigs MLSA_18 currently_use_ENDS i.age i.gender i.year i.state, or
logit currently_smoke_cigs MLSA_18 days_used_ENDS i.age i.gender i.year i.state, or

//SSDB Effectiveness regressions
logit currently_use_ENDS SSDB i.age i.gender i.year i.state, or

//SSDB Substitution regressions
logit currently_smoke_cigs SSDB i.age i.gender i.year i.state, or

