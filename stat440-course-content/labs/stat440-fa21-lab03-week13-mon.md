# STAT 440 Statistical Data Management - Fall 2021
## Week13 Lab03 Mon
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab03-week13-mon-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a non-numbered list with the first and last names of everyone at your station. Your name should appear in all caps.

**#2** statement: In R, default values are **required** values for arguments in a custom function.

If the text in bold is the term that makes the statement true, then write TRUE below in all caps. If the text in bold is the term that makes the statement false, then write FALSE below in all caps and write the correct term in bold text in a new line under FALSE.

**#3** **Import the following dataset using a programming language and its corresponding data URL. Ensure any date or time column(s) get properly formatted. Now using SQL, rename all columns such that there is no whitespace in the column names and print the first 5 rows of the resulting data using SQL.** Read the data descriptions to help verify the import was successful.

- Chicago Food Inspections Data Part 2 and its GHE data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/chicago-food-inspections-data03.csv or Box data URL https://uofi.box.com/shared/static/zyn1kls0xxpjl3ld0m9w6cl2s3343gov.csv

- The dataset (.csv file) contains 9375 observations and 9 columns. The observations are places that serve food including grocery stores, butchers, bakeries, restaurants, school cafeterias, gas stations, and delis throughout the city limits of Chicago. These establishments pass, fail, or have certain conditions associated with passing the inspection. Read the two links - [link01](https://data.cityofchicago.org/api/assets/BAD5301B-681A-4202-9D25-51B2CAE672FF) and [link02](http://dev.cityofchicago.org/open%20data/data%20portal/2018/06/29/food-violations-changes.html) for more details about the data values. The original source is the City of Chicago Data Portal. **If you have difficulty accessing the two Chicago Food Inspections links from the original sources, please use these  [alt-link01](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/chicago-food-data-key01.pdf) and [alt-link02](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/chicago-food-data-key02.pdf) links instead.**

**#4** Create a new function called `date_summary` that takes 1 input and returns 1 output such that the following is honored:

- the input is 1 vector that's date or datetime format
- the output is a data frame or tibble with 4 columns: 
  - column 1 named "dates" : the original input
  - column 2 named "weekdays": show the day of the week in words based on "dates"
  - column 3 named "dayssince": number of days in the past since the January 01, 2011
  - column 4 named "weekend": equals TRUE if "weekdays" is either Saturday or Sunday, otherwise equals FALSE
- test your new function with a random sample of 20 rows of the `Inspection Date` column of the imported data in Problem 3.

**#5** For the same random sample of 20 rows (businesses) in Problem 4, how many dates are within the months June, July, or August? **You must answer in Markdown syntax in a complete sentence and show code as evidence of your answer.**
