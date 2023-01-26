---
title: "STAT 440 Statistical Data Management - Fall 2021"
output: html_document
---

## Challenge01
### Due: Wednesday September 15, 2021 11:59 pm US Central Time
#### Created by Christoper Kinson

Grading Rubric (per question):  
2 points if complete and correct  
1 point if incomplete or incorrect  
0 points if no attempt made  


**Retrieving your work**

This and all future challenge .md files are written in Markdown. The .md file is rendered as an .html file for easier viewing. This and all future challenge assignments are located in the **challenges** directory within the **stat440-fa21-course-content** repo, i.e. **stat440-fa21-course-content/challenges** in GHE. It is always recommended that you **pull** (or refresh) the **stat440-fa21-course-content** repo to ensure that you have the most updated version of all course content including the challenge assignments. After pulling (or refreshing) the **stat440-fa21-course-content** repo, the challenge file will be in the challenge directory. Once you have accessed the .md file, copy all text from the .md file and paste all text into your reproducible document file (either .Rmd or .ipynb file). 

**Submitting your work**

In your individual student repo (named as your netID), you are to submit ***two*** files:

a. Your reproducible document file (either .Rmd or .ipynb file) which should be saved as challenge##-netID.Rmd or challenge##-netID.ipynb depending on your preferred software. For example, my challenge 01 file would be saved as challenge01-kinson2.Rmd.

b. Your rendered reproducible document file (.html) which should be saved as challenge##-netID.html. For example, my challenge 01 file would be saved as challenge01-kinson2.html.

**Do not place your files in a sub-directory (or folder).** You have an unlimited number of submissions, but only the latest proper submission (commit and push) will be viewed and graded. You are allowed to only use one software language per challenge file. This means that you cannot mix software languages (R and Python) in one single challenge file. **Remember the .Rmd (or .ipynb) file needs to render properly to .html before submitting.** 


***

Undergraduates are expected to complete the problems **#1-#8**. Graduate students are expected to complete all problems.

**The following problems should be completed by you as an individual. If any problem asks you a particular question, be sure to answer it completely (with code, written sentences, or both). Written sentences should not appear in code chunks or code cells. Written sentences should appear in Markdown syntax unless specifically stated otherwise.**

***Do not change anything in this file above the double line. Doing so will prevent your challenge from being graded.***

***
***

### Use only one programming language for this entire challenge assignment. Use the URLs to access the data (if any). No local files allowed.

**#1** Using Markdown syntax, create a numbered list with your first name in normal text as the first item and your last name in bold text as the second item.



**#2** Which of the following is a tokenized URL?

a. https://data.urbanaillinois.us/api/views/6gtk-bwms

b. https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/trips440-data.txt

c. https://raw.github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/master/data/chicago-food-inspections-data.csv?token=AAABJG5E3NYYWDFJPNK77YDBG7QAM

d. https://data.ccrpc.org/dataset/traffic-crashes/resource/

e. None of the Above



**#3** What are at least two differences between **.Rmd** and **.md** files in your own words? Write your answer in a complete sentence follows Markdown syntax.



**#4** Import the Nuisance Complaints Data using one programming language and the data URL https://data.urbanaillinois.us/api/views/tsn9-95m3/rows.tsv?accessType=DOWNLOAD&bom=true. Now, print the structure of the data. **This URL does not need to be tokenized. This structure should match the data description below. FYI, to import this dataset, you'll need a code chunk (RStudio) or code cell (Jupyter Lab). Also, you must use the tidyverse functionality to complete this problem if you are an R user.**

  - The dataset (a .tsv file) contains 10619 rows and 14 columns in which each complaint is recorded. The columns include details about the complaint, location of the nuisance, and more. The original source is the City of Urbana.



**#5** Using the data imported in Problem **#4**, ensure that the 'Date Reported', 'Date Notice Mailed or Given', and 'File Closure Date' columns are formatted as dates or datetimes; not character format. Now, print the first 10 rows of the resulting data.


