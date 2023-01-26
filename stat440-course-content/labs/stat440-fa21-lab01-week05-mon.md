# STAT 440 Statistical Data Management - Fall 2021
## Week05 Lab01 Mon
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab01-week05-mon-netID.Rmd. Then render this file to .html when completed. 
#### This lab must be submitted within 10 mintues of the end of class time. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station. Your name should appear in bold text.

**#2** Is there a Git extension for Jupyter Lab that allows python users to do common git operations such as commit, push, and pull? Write Yes or No.

**#3** Import the Speed Dating Data using one programming language software and the data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data.csv or Box data URL https://uofi.box.com/shared/static/w8vjq29rig8pdvussyg3997h1gwhkimq.csv. Now, print the resulting last 10 rows.

  - The dataset (a .csv file) contains a total of 162 observations and 59 columns. The observations are four minute dates that individuals participated in for a speed dating experiment conducted by the Columbia Business School. The columns contain demographic information about the daters and datees as well as survey responses about the dater, dater's dating preferences and scores that the dater gave the datee (datee is defined as "partner"). The datee is the person of the opposite sex who joined the table for the speed date. Technically, the data should contain information from the perspective of the datee when the gender variable changes; thus making them now the dater. A match occurs when both the dater and the datee agree to go on a second date (after the experiment is over). The original sources are Ray Fisman and Sheena Iyengar.

**#4** Using the imported data in Problem **#3** and the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), create a new data object named "date_score_success" that:  

- filters the observations such that the match column equals "yes"

- mutates a new column called "date_score" such that the following columns are summed: attr, sinc, intel, fun, amb, shar, like, and prob

- arranges the data by "date_score" in descending order

- de-selects the following variables: "iid", "id", "gender", "idg", "condtn", "wave", "round", "position", "order", "partner", and "pid"

Now, print the first 10 observations of the "date_score_success" data set showing only the following columns: date_score, samerace, age, age_o, and goal.

**#5** How many interracial (dater and datee race is not the same) matches occur? Use the imported data in Problem **#3**, the information in the link [speed dating data key](https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/blob/master/data/speed-dating-data-key.doc), and a programming language applying data management concepts to answer the questions. **Your answer should be in Markdown syntax and a code chunk should show the result as evidence.**
