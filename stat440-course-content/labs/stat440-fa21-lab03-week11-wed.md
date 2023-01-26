# STAT 440 Statistical Data Management - Fall 2021
## Week11 Lab03 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab03-week11-wed-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a non-numbered list with the first and last names of everyone at your station. Your name should appear in italic and bold text.

**#2** statement: SQL's CASE WHEN syntax is an analog of the **for loop**.

If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.

**#3** Among the black daters, how many daters rate the importance of their datee being the same race at least 8 out of 10? Use speed dating data GHE URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data.csv or Box URL https://uofi.box.com/shared/static/w8vjq29rig8pdvussyg3997h1gwhkimq.csv, the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), the data description below, and a programming language applying data management concepts to answer the questions. **Your answer should be in Markdown syntax and a code chunk should show the result as evidence.**

  - The dataset (a .csv file) contains a total of 162 observations and 59 columns. The observations are four minute dates that individuals participated in for a speed dating experiment conducted by the Columbia Business School. The columns contain demographic information about the daters and datees as well as survey responses about the dater, dater's dating preferences and scores that the dater gave the datee (datee is defined as "partner"). The datee is the person of the opposite sex who joined the table for the speed date. Technically, the data should contain information from the perspective of the datee when the gender variable changes; thus making them now the dater. A match occurs when both the dater and the datee agree to go on a second date (after the experiment is over). The original sources are Ray Fisman and Sheena Iyengar.

**#4** Using a programming language, the speed dating data GHE URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data.csv or Box URL https://uofi.box.com/shared/static/w8vjq29rig8pdvussyg3997h1gwhkimq.csv, the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), and the data description in **Problem 03** to create a new data object named "int_corr_success" that:  

- filters the observations such that the match column equals "yes"

- mutates a new column called "abs_int_corr" such that it takes the absolute value of int_corr

- arranges the data by "abs_int_corr" in descending order

Now, print the first 10 observations of the "int_corr_success" data set showing only the following columns: date_score, samerace, age, age_o, and goal.

**#5** How many same race (dater and datee race is the same) matches occur? Use speed dating data GHE URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data.csv or Box URL https://uofi.box.com/shared/static/w8vjq29rig8pdvussyg3997h1gwhkimq.csv, the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), the data description below, and a programming language applying data management concepts to answer the questions. **Your answer should be in Markdown syntax and a code chunk should show the result as evidence.**

  - The dataset (a .csv file) contains a total of 162 observations and 59 columns. The observations are four minute dates that individuals participated in for a speed dating experiment conducted by the Columbia Business School. The columns contain demographic information about the daters and datees as well as survey responses about the dater, dater's dating preferences and scores that the dater gave the datee (datee is defined as "partner"). The datee is the person of the opposite sex who joined the table for the speed date. Technically, the data should contain information from the perspective of the datee when the gender variable changes; thus making them now the dater. A match occurs when both the dater and the datee agree to go on a second date (after the experiment is over). The original sources are Ray Fisman and Sheena Iyengar.
