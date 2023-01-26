# STAT 440 Statistical Data Management - Fall 2021
## Week06 Lab01 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab01-week06-wed-netID.Rmd (or .ipynb for Python users). Then render this file to .html when completed. 
#### This lab must be submitted by the end of class time. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station. Your name should appear in italic text.

**#2** R's `+` operation is a **vectorized** operation. If the text in bold is the word or phrase that makes the statement true, then write TRUE below in all caps. If the text in bold is the word or phrase that makes the statement false, then write FALSE below in all caps followed by a period, and write the correct term in bold text after the period. For example, FALSE. **newword.** 

**#3** Import Market at the Square Vendor Products Data using one programming language software and the data URL https://data.urbanaillinois.us/api/views/6gtk-bwms/rows.csv?accessType=DOWNLOAD. No need to consider tokenized URLs. Now, print the structure of the data. **This structure should match the data description below.** 

  - The dataset (a .csv file) contains 1185 rows and 15 columns. The Market at the Square is a seasonal farmer's market where vendors sell vegetables, fruits, meat, and other products. Some vendors may sell non-food items such as arts and crafts. Other vendors are there to promote their organization such as political orgs, candidates, and religious groups. The data contains a listing of products sold by different vendors and with month-by-month details on which products are available, where the availability is Yes or No.

**#4** Using Week04 concepts with tidyverse functions (or pivot/merge functions in Python), reshape the imported data in Problem **3** such that the columns named as the 12 months of the year become one single column named "Months" with their corresponding Yes or No values named as "Availability". Now, print the structure of the reshaped data.

**#5** Using Week06 concepts with loops, conditional execution, and/or the `apply()` family of functions (no tidyverse or pivot/merge functions allowed in Python), reshape the imported data in Problem **3** such that the columns named as the 12 months of the year become one single column named "Months" with their corresponding Yes or No values named as "Availability". Print the first 10 rows of the reshaped data.
