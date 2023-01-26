# STAT 440 Statistical Data Management - Fall 2021
## Week09 Lab02 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab02-week09-wed-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station. Your name should appear in italic and bold text.

**#2** Suppose a dataset you were importing contained a date (and time) column with all entries appearing in the following format "2020-MondayNovember16". The correct format (written as percents, letters, or other characters) you should use for parsing this column is "____". **Write your answer that fills in the blank below (Markdown syntax).** *Note that the quotes are already present.*

**#3** Import the following datasets and print the last 5 rows of each dataset. The datasets are part of a collection of popular baby names with the following column names: state, sex (F for female or M for male), year, name, frequency. The names are from the state of Illinois over the years 1910 to 2020. The baby names come from Social Security records. Soon after a child is born in the US, the parent(s) file for a Social Security card. This data does not include baby names with frequencies less than 5. The original source is the Social Security Administration https://www.ssa.gov/oact/babynames/limits.html.

- Iowa Popular Baby Names Data [GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-iowa-data.TXT) or [Box data URL](https://uofi.box.com/shared/static/yye6p5kgq0l1dtz6bqz364mr6iz3c3bw.txt).

  - The dataset (a .TXT file) contains 96176 rows and 5 columns. 

- Illinois Popular Baby Names Data [GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-illinois-data.TXT) or [Box data URL](https://uofi.box.com/shared/static/ttc01y8x71eadmzc9ramd16ksuq2xckk.txt).

  - The dataset (a .TXT file) contains 234613 rows and 5 columns. 

- Indiana Popular Baby Names Data [GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-indiana-data.TXT) or [Box data URL](https://uofi.box.com/shared/static/0ymjj08wid1l19ehy5tx9hjq2xnbse64.csv).

  - The dataset (a .csv file) contains 143083 rows and 5 columns. 

- Kentucky Popular Baby Names Data [GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-kentucky-data.TXT) or [Box data URL](https://uofi.box.com/shared/static/nhfxo34324uratwl3fezx08fcdoknayj.txt).

  - The dataset (a .TXT file) contains 121014 rows and 5 columns. 

- Missouri Popular Baby Names Data [GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-missouri-data.TXT) or [Box data URL](https://uofi.box.com/shared/static/p2synnz72z6se94int717w9jhgflmynb.csv).

  - The dataset (a .csv file) contains 142035 rows and 5 columns. 

- Wisconsin Popular Baby Names Data [GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/popular-baby-names-winconsin-data.TXT) or [Box data URL](https://uofi.box.com/shared/static/arv2amejhnyglkc684mgeyp0mcom27tl.txt).

  - The dataset (a .TXT file) contains 119521 rows and 5 columns. 

**#4** Using the 6 imported datasets in Problem **#3**, the information in the data descriptions, and a programming language, create a single dataset that contains the five columns - state, sex, year, name, and frequency - such that the rows of baby names contain no duplicates. Now, print the first 10 observations of the resulting data.

**#5** What is the average length of names (measured in characters) per state and which state had the longest average name length? Use the 6 imported datasets in Problem **#3**, the information in the data descriptions, and a programming language applying data management concepts to answer the questions. **Your answer should be in Markdown syntax and a code chunk should show the result as evidence. Duplicates names are allowed. Your result must be a single table or data frame, not multiple tables (or data frames) per state.**
