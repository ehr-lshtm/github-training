
# SCRIPT INFORMATION 
# ------------------------------------------------
# script: github_training.R
# author: a schultze
# description: this is a fun script for learning github 
#
# dependencies: pacman, tidyverse, gt
#
# outputs: n/a
#
# ------------------------------------------------
# 0. HOUSEKEEPING --------------------------------

# install and/or load tidyverse and gt 
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, gt)

# 1. EXPLORE DATA ---------------------------------------------------------
# We're going to be using a built in R dataset called airquality 
# Let's look at it 
glimpse(airquality)

# 2. ANALYSE DATA------------------------------------------------------
# We'd like to calculate the mean Ozone level per month 

ozone_summary <- airquality %>% 
  group_by(Month) %>% 
  summarise(mean_ozone = mean(Ozone))

# Print the results 
gt(ozone_summary)

# how weird, ozone is missing in each month. Can you find and correct the error? 


