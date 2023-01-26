# STAT 440 Statistical Data Management - Fall 2021
## Week15 Lab03 Mon
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab03-week15-mon-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a non-numbered list with the names of everyone at your station in all caps. Your name should appear in all lower case text.

**#2** statement: When scraping a website, we need not worry about certain permissions to use information and be aware of intellectual property rules.

If the statement is true, then write TRUE below in all caps. Otherwise write FALSE in all caps.

**#3** statement: **Data analysts** build internal products specifically for data such as data warehouses and automation processes .

If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.

**#4** Import the following dataset using a programming language and its corresponding data URL. Ensure any date or time column(s) get properly formatted. Read the data descriptions to help verify the import was successful.

- University of Illinois Daily Crime Log and its GHE data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/daily-crime-log-data.csv or Box data URL https://uofi.box.com/shared/static/7uah46fdogn8gdc1zy06efuxsfpqif4g.csv

- The dataset (.csv file) contains 462 observations and 8 columns. The observations are crimes reported in the University area within the last 60 days. Instructions for interpreting the data is in its [data key](https://police.illinois.edu/wp-content/uploads/2016/02/Crime-Log-Instructions.pdf).

**#5** Validate and clean the following errors that may be present in the data:

errors | resolution |
---|---|
the column names appear within the data observations | remove those rows |
dates not in date or datetime format | coerce the date format |
times not in time format | coerce the time format |
general location contains a forward slash | change forward slashes to the string 'AND'
crime descriptions for THEFT \$500 AND UNDER is equivalent to THEFT UNDER \$500 | make these two crime descriptions into one description called THEFT \$500 AND UNDER |
disposition ADMIN CLOSED is equivalent to ADMIN. CLOSE | make these two dispositions into one disposition called ADMIN. CLOSED |
disposition STUDENT DISC REFERRAL is equivalent to STUDENT DISCIPLINE REFERRAL | make these two dispositions into one disposition called STUDENT DISCIPLINE REFERRAL |
