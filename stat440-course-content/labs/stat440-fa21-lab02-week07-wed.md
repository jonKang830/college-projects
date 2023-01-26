# STAT 440 Statistical Data Management - Fall 2021
## Week07 Lab02 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab02-week07-wed-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station. Your name should appear in italic text.

**#2** The syntax `$` is used to match the string at the **beginning** of the line. If the text in bold is the word or phrase that makes the statement true, then write TRUE below in all caps. If the text in bold is the word or phrase that makes the statement false, then write FALSE below in all caps followed by a period, and write the correct term in bold text after the period. For example, FALSE. **newword** 

**#3** Import the Popular Baby Names Data using one programming language software and the GHE data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-national-data.csv or Box data URL https://uofi.box.com/shared/static/c2whskv4x21w9pok3qxfh2kdz7jxk1g4.csv. Now, print the structure of the data. **This structure should match the data description below.** 

  - The dataset (a .csv file) contains 658127 rows and 4 columns. The data is a combination of popular baby names by gender, relative frequency, and year from 2001 to 2020 in the US. The baby names come from Social Security records. Soon after a child is born in the US, the parent(s) file for a Social Security card. This data does not include baby names with frequencies less than 5. The original source is the Social Security Administration https://www.ssa.gov/oact/babynames/limits.html.

**#4** Using string manipulation and regex, create a subset of the data that only includes baby names within the range "Fq" - "Hj" (endpoints are inclusive). Now, print a random sample (using the programming language's randomization methods) of 10 rows of the resulting subset.

**#5** How many times does the letter "y" (case insensitive) appear among all female names? **You should not use the relative frequency column for this problem. Your answer should be in Markdown syntax and a code chunk should show the result as evidence.**
