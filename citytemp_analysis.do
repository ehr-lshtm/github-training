
/* SCRIPT INFORMATION 
# ------------------------------------------------
# script: github_training.do
# author: a schultze
# description: this is a fun script for learning github 
#
# dependencies: n/a
#
# outputs: n/a
#
# -----------------------------------------------*/ 

* 0. HOUSEKEEPING --------------------------------


* 1. EXPLORE DATA ---------------------------------------------------------
* We're going to be using a built in Stata dataset called citytemp
* Let's load and look at it 
webuse citytemp.dta, clear
desc

*2. ANALYSE DATA------------------------------------------------------
* We'd like to calculate the average july temp (in celsius) by region
* convert to celsius 
gen temp_july_c = ((tempjan - 32) * 5)/9

* get the mean by region 
collapse temp_july_c, by(region)
list

* how weird, the temperature seems quite cold for July. Can you find and correct an error? 

