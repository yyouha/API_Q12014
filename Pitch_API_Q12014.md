Pitch_API_Q12014
========================================================
author: Yuhanis Yusoff
date: 25th Jan 2016


========================================================

<h1>Air Pollution Index (API) in Malaysia</h1>
<h3>For Q1 2014</h3>

Background
========================================================

This project made use of the following packages: shiny, shinydashboard, ggplot to display plot and analysis of IPU reading in Malaysia. The dataset can be download from http://www.data.gov.my/view.php?view=273 
<br><br>
The Air Pollution Index (API) is a simple and generalized way to describe the air quality, which is used in Malaysia. It is calculated from several sets of air pollution data.
<br>I have selected only data from January 2014 - March 2014 and clean the data to suit my analysis. The higher the IPU reading the worse the condition is. You can select to filter the record by state. 
<br><br>
Viewer able to:
<br>1. Select the state to view the result for each state
<br>2. View the dataset that is used for this apps
<br><br>
For the nice look and feel for this apps, I use shinydashboard library (https://rstudio.github.io/shinydashboard/get_started.html) 

UX (User Experience)
========================================================

For the nice look and feel for this apps, I use shinydashboard library (https://rstudio.github.io/shinydashboard/get_started.html) 
<br><br>

![picture of spaghetti](UX.png)

Slide With Code
========================================================

To display the dashboard below code is used

```r
summary(cars)
```

```
     speed           dist       
 Min.   : 4.0   Min.   :  2.00  
 1st Qu.:12.0   1st Qu.: 26.00  
 Median :15.0   Median : 36.00  
 Mean   :15.4   Mean   : 42.98  
 3rd Qu.:19.0   3rd Qu.: 56.00  
 Max.   :25.0   Max.   :120.00  
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](Pitch_API_Q12014-figure/unnamed-chunk-2-1.png)