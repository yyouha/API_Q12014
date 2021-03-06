Pitch_API_Q12014
========================================================
author: Yuhanis Yusoff
date: 25th Jan 2016
<h2>Air Pollution Index (API) in Malaysia</h2>
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


```r
api <- read.csv("15-BacaanIPU-JanToMarch2014-cleanedData.csv", stringsAsFactors = FALSE)
dim(api)
```

```
[1] 4528    5
```

```r
head(api, 3)
```

```
    Tarikh  Waktu Negeri    Kawasan API
1 1/1/2014 1:00PM Perlis     Kangar  59
2 1/1/2014 1:00PM  Kedah   Langkawi  46
3 1/1/2014 1:00PM  Kedah Alor Setar  35
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](Pitch_API_Q12014-figure/unnamed-chunk-2-1.png)
