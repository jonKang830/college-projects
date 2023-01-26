---
title: "STAT 440 Statistical Data Management - Fall 2021"
output: html_document
---

## Homework04
### Due: Wednesday November 03, 2021 11:59 pm US Central Time
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

**#1** (Markdown) Using Markdown syntax, make a numbered list with your first name in normal text as the first item and your last name in bold text as the second item.



**#2** (Loops and conditional execution, Summarizing data, Markdown) 

statement: **For loops** can be used to handle grouped data summarization. 

If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.



**#3** (Validating data, Cleaning data, Markdown) 

statement: **Condition-controlled loops** are those in which repetitive actions are repeated for a predetermined number of times and stopped when the that number of times is reached. 

If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.



**#4** (Accessing and importing data) Import the subsets of the IRI Academic Data (existing as three separate data sets) and print the structure of each separate data set using one programming language and the data URLs below. Additionally, you should read the data keys in the [data key GHE link](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/iri-data-key.pdf) or [data key Box link](https://uofi.box.com/shared/static/pg7u97n4rkqql5o0bg736zumrn8n1lgg.pdf) and the data description below:

- [ads-demo - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/ads-demo440-data.csv) or [ads-demo - Box data URL](https://uofi.box.com/shared/static/9b9ecldtxkr23wb3uc36wwbn2l5ylpyx.csv)

- [trips - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/trips440-data.txt) or [trips - Box data URL](https://uofi.box.com/shared/static/0pyqnfpl40kr5do7fue8t85vva11ynjm.txt)

- [delivery-stores - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/delivery-stores440-data) or [delivery-stores - Box data URL](https://uofi.box.com/shared/static/o2bqah52ioj0p0q4msvna7ixk8d9lsh4)

  - The data represent sales information and customer demographics captured from select markets in the US in the year 2001, where the weeks are coded. The ads-demo data (a .csv file) contain 13983 observations and 20 columns that inform on customer ("panelist") demographics. Panelist ID is a unique identifier. The trips data (a .txt file) contain 730040 observations and 4 columns that inform on panelist shopping frequency and how much was spent. Panelists may shop at the same store multiple times in a given time period. The delivery-stores data (a file with no extension) contain 1575 observations and 7 columns that inform on the market that the store is in and estimates how much that store sells annually.



**#5** (Data reduction, Data expansion, Summarizing data) Beginning with the **trips** data set and the information in the link in **Problem 4**, use a programming language to create a new data object named `big_spender` that does the following in this order:  

1. mutates a new column called "dollars999" which converts the cents values in "cents999" to dollars

2. de-selects the week column

3. computes the total dollars spent per panelist ID

4. filters the panelists that spend over $15000 in 2001

Now, print the resulting `big_spender` data.



**#6** (Data reduction, Data expansion, Combining data, Markdown) Use the `big_spender` data, any of the data sets in **Problem 4**, the information in the link in **Problem 4**, and a programming language applying data management concepts to answer the following question in Markdown syntax and complete sentence(s): 

- Which market (location) do the panelists in `big_spender` shop in?

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**



**#7** (Data reduction, Data expansion, Summarizing data, Regular expressions and string manipulation) Beginning with the **delivery-stores** data set and the information in the link in **Problem 4**, use a programming language to create a new data object named `southern_grocery` that does the following (in this order):  

1. filters markets in southern places including: Atlanta, Birmingham, Charlotte, Dallas, Durham, Houston, Knoxville, Mississippi, Montgomery, New Orleans, Norfolk, Raleigh, Richmond, South Carolina

2. mutates a new column called "single_state_market" which equals "YES" if the market name is only the name of a state and "NO" otherwise

3. renames any market name that contains a city name then comma then state abbreviation to only contain the city name (e.g. "Urbana, IL" becomes "Urbana")

4. renames any market name that contains a forward slash to contain a space ampersand space (e.g. "Urbana/Champaign" becomes "Urbana & Champaign")

5. arranges by market name in alphabetical order

Now, print the first 5 observations and last 5 observations of `southern_grocery`.



**#8** (Data reduction, Data expansion, Combining data, Markdown) Use the data in **Problem 4**, the information in the link in **Problem 4*, and a programming language applying data management concepts to answer the following question in Markdown syntax and complete sentence(s): 

- Among the panelists with at least one child aged 0-17 years, which panelists spend at least one hundred dollars at each of at least 3 different grocery stores within the first 40 weeks of the year?

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**



**#9** (Data reduction, Data expansion, Combining data, Markdown) Use the data in **Problem 4**, the information in the link in **Problem 4*, and a programming language applying data management concepts to answer the following question in Markdown syntax and complete sentence(s):  

- Among any panelists who shop at the same grocery stores, how many panelists - who are renting their homes -  spend more than five hundred dollars in the first 6 months of the year?

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer. The statement "among any panelists who shop at the same grocery stores" means if two people shop at Store1 and 5 people shop at Store2 then these 7 panelists should be included in the result. **



**#10** (Data reduction, Data expansion, Combining data, Markdown) Use the data in **Problem 4**, the information in the link in **Problem 4*, and a programming language applying data management concepts to answer the following question in Markdown syntax and complete sentence(s):  

- Which panelists - with more than one person living in their household - spend at least $1000 at each of 2 or more stores (if any)? 

**You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**


