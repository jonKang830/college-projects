---
title: "STAT 440 Statistical Data Management - Fall 2021"
output: html_document
---

## Challenge03
### Due: Wednesday December 01, 2021 11:59 pm US Central Time
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

All students are expected to complete all problems.

**The following problems should be completed by you as an individual. If any problem asks you a particular question, be sure to answer it completely (with code, written sentences, or both). Written sentences should not appear in code chunks or code cells. Written sentences should appear in Markdown syntax unless specifically stated otherwise.**

***Do not change anything in this file above the double line. Doing so will prevent your challenge from being graded.***

***
***

### Use only one programming language for this entire challenge assignment. Use the URLs to access the data (if any). No local files allowed.

**#1** Using Markdown syntax, create a numbered list with your first name in normal text as the first item and your last name in bold and italic text as the second item.

Answers will vary, but must be a numbered list. Graded for completeness. For example,

1. Chris

2. ***Kinson***

**#2** Using a programming language, import the US State-level COVID-19 Historical Data from the New York Times and the Harvard's US Presidential Election Data using the data URLs [covid data URL](https://github.com/nytimes/covid-19-data/raw/master/us-states.csv) and [election - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/us-presidential-election-data.csv) or [election - Box data URL](https://uofi.box.com/shared/static/qmhzgom3e1y0lnqd720rnbhp34xyfd6d.csv). Now, print the last 5 rows for each dataset.

- Data description: The "covid" dataset (a .csv file) contains the number of COVID-19 cases and deaths per state as a time series. **This covid data is updated daily and its URL does not need to be tokenized.** The "election" data (a .csv file) contains how each state voted in the each US Presidential Election and the number of votes each candidate received along with their political party affiliations. The candidate receiving the most votes can be considered as the winner of that state along with their political party. In other words, the state's political party affiliation is based on the candidate who who received the most votes for that state.

**#3** Beginning with both datasets imported in **Problem 2**, answer the following question without using SQL:

- Based on the 2016 election results, which political parties are associated with the states with the 10 highest COVID-19 total cases (cases date is November 2, 2020)? Include the following columns in your result: date, state, cases, deaths, party_simplified, year.

**Your question should be answered in complete sentence(s) in Markdown syntax, and the resulting tidyverse code and data print out should serve as evidence.**

**#4** Beginning with both datasets imported in **Problem 2**, answer the following question using SQL without subqueries:

- Based on the 2016 election results, which political parties are associated with the states with the 10 highest COVID-19 total cases (cases date is November 2, 2020)? Include the following columns in your result: date, state, cases, deaths, party_simplified, year.

**Your question should be answered in complete sentence(s) in Markdown syntax, and the resulting code and data print out should serve as evidence.**

**#5** Beginning with both datasets imported in **Problem 2**, answer the following question using at least one SQL subquery:

- Based on the 2016 election results, which political parties are associated with the states with the 10 highest COVID-19 total cases (cases date is November 2, 2020)? Include the following columns in your result: date, state, cases, deaths, party_simplified, year.

**Your question should be answered in complete sentence(s) in Markdown syntax, and the resulting code and data print out should serve as evidence.**
