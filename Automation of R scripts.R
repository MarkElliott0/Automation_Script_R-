###Process to automate scripts in R

###First install and load required packages 
if (!require("pacman")) install.packages("pacman")
pacman::p_load(dplyr, tidyverse, shiny, taskscheduleR, miniUI)      


##Open UI which allows you to schedule tasks
taskscheduleR:::taskschedulerAddin()


###Example Script you could automate in R 
library(taskscheduleR)
Data <- "Link to R script toautomate"

taskscheduler_create(taskname = "Automate_task", 
                     rscript = Date,
                     schedule = "MINUTE", 
                     starttime = format(Sys.time(), "%H:%M:%S"), 
                     startdate = format(Sys.time(), "%d/%m/%Y"))