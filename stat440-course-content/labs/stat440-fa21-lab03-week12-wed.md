# STAT 440 Statistical Data Management - Fall 2021
## Week12 Lab03 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab03-week12-wed-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a non-numbered list with the first and last names of everyone at your station. Your name should appear in italic and bold text.

**#2** statement: An SQL subquery can be written **anywhere** so long as the SQL syntax is followed.

If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.

**#3** Without using SQL, import the subsets of the IRI Academic Data (existing as three separate data sets) using one programming language and the data URLs below. Using SQL, print the first 5 rows of each separate data set. Additionally, you should read the data key in the [data key GHE link](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/iri-data-key.pdf) or [data key Box link](https://uofi.box.com/shared/static/pg7u97n4rkqql5o0bg736zumrn8n1lgg.pdf) and the data description below:

- [ads-demo - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/ads-demo440-data.csv) or [ads-demo - Box data URL](https://uofi.box.com/shared/static/9b9ecldtxkr23wb3uc36wwbn2l5ylpyx.csv)

- [trips - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/trips440-data.txt) or [trips - Box data URL](https://uofi.box.com/shared/static/0pyqnfpl40kr5do7fue8t85vva11ynjm.txt)

- [delivery-stores - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/delivery-stores440-data) or [delivery-stores - Box data URL](https://uofi.box.com/shared/static/o2bqah52ioj0p0q4msvna7ixk8d9lsh4)

  - The data represent sales information and customer demographics captured from select markets in the US in the year 2001, where the weeks are coded. The ads-demo data (a .csv file) contain 13983 observations and 20 columns that inform on customer ("panelist") demographics. Panelist ID is a unique identifier. The trips data (a .txt file) contain 730040 observations and 4 columns that inform on panelist shopping frequency and how much was spent. Panelists may shop at the same store multiple times in a given time period. The delivery-stores data (a file with no extension) contain 1575 observations and 7 columns that inform on the market that the store is in and estimates how much that store sells annually.

**#4** Among the panelists with at least one child aged 0-17 years, how many panelists spend a total of at least one hundred dollars at each of at least 3 different grocery stores within the first 40 weeks of the year? Use any of the data in **Problem 3**, the data description and data key in **Problem 3**, and a programming language applying data management concepts to answer the questions. **SQL as well as at least one SQL subquery must be used to complete this problem. Your answer should be in Markdown syntax and a code chunk should show the result as evidence.**

**#5** Beginning with the **trips** data set and the information in the link in **Problem 3**, use a programming language to create a new data object named `big_spender` that does the following in this order:  

1. mutates a new column called "dollars999" which converts the cents values in "cents999" to dollars

2. de-selects the week column

3. computes the total dollars spent per panelist ID

4. filters the panelists that spend over $15000 in 2001

Now, print the resulting `big_spender` data. **SQL must be used to complete this problem.**
