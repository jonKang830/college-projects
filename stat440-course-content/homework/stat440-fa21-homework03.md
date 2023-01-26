---
title: "STAT 440 Statistical Data Management - Fall 2021"
output: html_document
---

## Homework03
### Due: Monday October 11, 2021 11:59 pm US Central Time
#### Created by Course Staff

Grading Rubric (per question):  
2 points if complete and correct  
1 point if incomplete or incorrect  
0 points if no attempt made  


**Retrieving your work**

This and all future homework .md files are written in Markdown. The .md file is rendered as an .html file for easier viewing. This and all future homework assignments are located in the **homework** directory within the **stat440-fa21-course-content** repo, i.e. **stat440-fa21-course-content/homework** in GHE. It is always recommended that you **pull** (or refresh) the **stat440-fa21-course-content** repo to ensure that you have the most updated version of all course content including the homework assignments. After pulling (or refreshing) the **stat440-fa21-course-content** repo, the homework file will be in the homework directory. Once you have accessed the .md file, copy all text from the .md file and paste all text into your reproducible document file (either .Rmd or .ipynb file). 

**Submitting your work**

In your individual student repo (named as your netID), you are to submit ***two*** files:

a. Your reproducible document file (either .Rmd or .ipynb file) which should be saved as homework##-netID.Rmd or homework##-netID.ipynb depending on your preferred software. For example, my homework 01 file would be saved as homework01-kinson2.Rmd.

b. Your rendered reproducible document file (.html) which should be saved as homework##-netID.html. For example, my homework 01 file would be saved as homework01-kinson2.html.

**Do not place your files in a sub-directory (or folder).** You have an unlimited number of submissions, but only the latest proper submission (commit and push) will be viewed and graded. You are allowed to only use one software language per homework file. This means that you cannot mix software languages (R and Python) in one single homework file. **Remember the .Rmd (or .ipynb) file needs to render properly to .html before submitting.** 


***

Undergraduates are expected to complete the problems **#1-#8**. Graduate students are expected to complete all problems.

**The following problems should be completed by you as an individual. If any problem asks you a particular question, be sure to answer it completely (with code, written sentences, or both). Written sentences should not appear in code chunks or code cells. Written sentences should appear in Markdown syntax unless specifically stated otherwise.**

***Do not change anything in this file above the double line. Doing so will prevent your homework from being graded.***

***
***

### Use only one programming language for this entire homework assignment. Use the URLs to access the data (if any). No local files allowed.

**#1** (Markdown) Using Markdown syntax, make a numbered list with your first name in normal text as the first item and your last name in italic text as the second item.

  

**#2** (Syllabus, Three Ways to Interact with this Course, Markdown) Which of the following are ways (a--e) to interact with this course? Place your answers in bold text.

a. Using GHE  
b. Using GitHub.com  
c. Using Git from the command line  
d. Using Git with RStudio as a git client  
e. Using Git with chriskinson.com  

**#3** (Loops and conditional execution, Markdown) **Index-controlled** loops are those in which repetitive actions are repeated for a predetermined number of times and stopped when the that number of times is reached. If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.



**#4** (Accessing and importing data) **Import the following datasets using a programming language and their corresponding data URLs, and print the first 10 rows of each.** Read the data descriptions to help verify the import was successful.

- Champaign County Sheriff Office & Jail Data and its data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/ccso-jail-data.dat or Box data URL https://uofi.box.com/shared/static/lurfpdqk63au11yzra4a88sxizda0iz5.dat.

  - The dataset (a .dat file) contains over 11082 observations and 40 columns for individuals who were booked into jail in Champaign County. The individuals are not identifiable based on personal identity, but they are given unique jacket numbers. Some rows in the data appear more than once because of multiple crimes being assigned to one person. But there is also the possibility of there being recidivists. A recidivist is a person who goes to jail repeatedly (more than one datetime). The demographics of the people, reasons for being booked, and crime code are also given in the data. The original source is the Champaign County Sheriff Office & Jail (CCSO).

- Chicago Food Inspections Data and its GHE data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/chicago-food-inspections-data.csv or Box data URL https://uofi.box.com/shared/static/lwwzlv2sulip1p8qoqqghmw0pouso0wk.csv.

  - This dataset (a .csv file) contains 18751 observations and 22 columns. The observations are places that serve food including grocery stores, butchers, bakeries, restaurants, school cafeterias, gas stations, and delis throughout the city limits of Chicago. These establishments pass, fail, or have certain conditions associated with passing the inspection. Read the two links - [link01](https://data.cityofchicago.org/api/assets/BAD5301B-681A-4202-9D25-51B2CAE672FF) and [link02](http://dev.cityofchicago.org/open%20data/data%20portal/2018/06/29/food-violations-changes.html) for more details about the data values. The original source is the City of Chicago Data Portal. **If you have difficulty accessing the two Chicago Food Inspections links from the original source, please use these  [alt-link01](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/chicago-food-data-key01.pdf) and [alt-link02](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/chicago-food-data-key02.pdf) links instead.**



**#5** (Handling dates and times) For each dataset imported in **Problem 4**, ensure all date or time columns are treated as date or datetime formats. Now, print the structure of both datasets.



**#6** (Data reduction, Data expansion) Using the Chicago Food Inspections Data imported in **Problem 4**, the data description and details in the links in **Problem 4**, and a programming language, create a new data object named `inspections` that does the following in this order:  

1. filters inspection dates to after September 01, 2011

2. mutates a new column called "pass_or_not" which equals 1 if the restaurant passes the inspection, 0 if the restaurant passes with conditions, 0 if the restaurant fails, and NA otherwise

3. de-selects the following columns: "Address", "Census Tracts", "City", "Community Areas", "Historical Wards 2003-2015", "Location", "State", "Wards", and "Zip Codes"  

4. drops all missing values among the remaining columns (e.g. if one field is missing a value for a single row, then that row must be removed)

Now, print the first 5 observations and the last 5 observations of the `inspections` data set.



**#7** (Data reduction, Data expansion, Markdown) Use the `inspections` data object in **Problem 6** and a programming language applying data management concepts to answer the following question in Markdown syntax and complete sentence(s): 

- Among the businesses that failed their inspections, what was the third most common facility type? 

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**



**#8** (Data reduction, Data expansion) Using the Champaign County Sheriff Office & Jail Data imported in **Problem 4**, the data description and details in the links in **Problem 4**, and a programming language, create a new data object named `inmates` that does the following in this order:  

1. mutates a new column "booking_date_time" that glues "booking_date" with "booking_time"  

    1. **"booking_date_time" should be formatted as a datetime format**  

2. mutates a new column "released_date_time" that glues "released_date" and "released_time" columns  

    1. **"released_date_time" should be formatted as a datetime format**  

3. mutates 5 new columns based on the "booking_date_time" and "released_date_time" columns to compute how much time people spent in jail (as integers): (1) "years", (2) "days", (3) "hours", (4) "minutes", (5) "seconds"  

    1. years should represent the number of full years spent in jail (i.e. "years" would be 0 if the person did not spend at least 365 days in jail otherwise years would be an integer)  
    2. days should represent the number of days after years (i.e. "days" should always be less than 365)  
    3. hours should represent the number of hours after days (i.e. "hours" should always be less than 24)  
    4. minutes should represent the number of minutes after hours (i.e. "minutes" should always be less than 60)  
    5. seconds should represent the number of seconds after minutes (i.e. "seconds" should always be less than 60)

4. mutates a new column "time_spent_in_jail1" which adds together the "years", "days", "hours", "minutes", and "seconds" columns representing the duration of time (in hours as a double)  

5. mutates a new column "time_spent_in_jail2" which uses the difference in time between "booking_date_time" and "released_date_time" columns representing the duration of time spent in jail (in hours as a double)  

6. renames any columns with the word "booking" such that "booking" becomes "booked"  

Now, print the first 10 observations of `inmates` data but only selecting the columns: "jacket_number", "time_spent_in_jail1", and "time_spent_in_jail2".



**#9** (Data reduction, Data expansion, Markdown) Use the `inmates` data object in **Problem 8** and a programming language applying data management concepts to answer the following questions in Markdown syntax and complete sentence(s): 

- Are "time_spent_in_jail1" and "time_spent_in_jail2" practically the same?

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**



**#10** (Data reduction, Data expansion, Markdown) Use the `inmates` data object in **Problem 8** and a programming language applying data management concepts to answer the following questions in Markdown syntax and complete sentence(s): 

- Which crimes are associated with the person who spent the most time in jail ("time_spent_in_jail1")?

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**


