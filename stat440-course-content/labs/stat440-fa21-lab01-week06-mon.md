# STAT 440 Statistical Data Management - Fall 2021
## Week06 Lab01 Mon
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab01-week06-mon-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### This lab must be submitted by the end of class time. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station. Your name should appear in italic text.

**#2** R's `sum()` function is a **vectorized** function. If the text in bold is the word or phrase that makes the statement true, then write TRUE below in all caps. If the text in bold is the word or phrase that makes the statement false, then write FALSE below in all caps followed by a period, and write the correct term in bold text after the period. For example, FALSE. **newword.**  

**#3** Import the Speed Dating Data using one programming language software and the data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data.csv or Box data URL https://uofi.box.com/shared/static/w8vjq29rig8pdvussyg3997h1gwhkimq.csv. Now, print the resulting first 10 rows.

  - The dataset (a .csv file) contains a total of 162 observations and 59 columns. The observations are four minute dates that individuals participated in for a speed dating experiment conducted by the Columbia Business School. The columns contain demographic information about the daters and datees as well as survey responses about the dater, dater's dating preferences and scores that the dater gave the datee (datee is defined as "partner"). The datee is the person of the opposite sex who joined the table for the speed date. Technically, the data should contain information from the perspective of the datee when the gender variable changes; thus making them now the dater. A match occurs when both the dater and the datee agree to go on a second date (after the experiment is over). The original sources are Ray Fisman and Sheena Iyengar.

**#4** Using the imported data in Problem **#3** and the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), do the following using Week06 concepts in addition to the tidyverse but not using `group_by()`:

For every field of study, compute the average abs_int_corr (abs_int_corr equals the absolute value of int_corr). **You must use loops, conditional execution, and/or the `apply()` family of functions on this problem.**

Now, print the average abs_int_corr for all fields of study.

**#5** Which field has the smallest average date score? Which field has the largest average date score? The date score equals the sum of attr, sinc, intel, fun, amb, shar, like, and prob. Use the speed dating data, the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), and a programming language applying data management concepts to answer the questions. **Your answer should be in Markdown syntax and a code chunk should show the result as evidence.**
