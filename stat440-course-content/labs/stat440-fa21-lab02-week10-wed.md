# STAT 440 Statistical Data Management - Fall 2021
## Week10 Lab02 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab02-week10-wed-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### Both .Rmd/.ipynb and .html files must be submitted by 11:00 am. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station. Your name should appear in italic and bold text.

**#2** Which of the following are data cleaning approaches? Make your answers bold.

a. Computing summary statistics

b. Removing duplicate observations

c. Filtering and arranging

d. Correcting misspelled words

**#3** Using a programming language, import the US State-level COVID-19 Historical Data from the New York Times and the Harvard's US Presidential Election Data using the data URLs [covid data URL](https://github.com/nytimes/covid-19-data/raw/master/us-states.csv) and [election - GHE data URL](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/us-presidential-election-data.csv) or [election - Box data URL](https://uofi.box.com/shared/static/qmhzgom3e1y0lnqd720rnbhp34xyfd6d.csv). Now, print the structure for each dataset.

- Data description: The "covid" dataset (a .csv file) contains the number of COVID-19 cases and deaths per state as a time series. **This data is updated daily.** The "election" data (a .csv file) contains how each state voted in the each US Presidential Election and the number of votes each candidate received along with their political party affiliations. The candidate receiving the most votes can be considered as the winner of that state along with their political party. In other words, the state's political party affiliation is based on the candidate who who received the most votes for that state.

**#4** Beginning with the "election" data imported in **Problem 3**, answer the following question:

- For each state, which candidate received the most votes in the 2020 election? Include the following columns in your result: state, candidate, candidatevotes, party_simplified.

**Your resulting tidyverse code and data print out should serve as the answer.**

**#5** Beginning with both datasets imported in **Problem 3**, answer the following question:

- Based on the 2016 election results, which political parties are associated with the states with the 10 highest COVID-19 cases (death dates by November 2, 2020)? Include the following columns in your result: date, state, cases, deaths, party_simplified, year.

**Your question should be answered in complete sentence(s) in Markdown syntax, and the resulting tidyverse code and data print out should serve as evidence.**
