# STAT 440 Statistical Data Management - Fall 2021
## Week04 Lab01 Wed
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab01-week04-wed-netID.Rmd. Then render this file to .html when completed. 
#### This lab must be submitted within 10 mintues of the end of class time. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station followed by a dash then the laptop group the everyone belongs; for example, Chris Kinson - D. Your name should appear in bold text. The possible laptop groups are: 

![](https://uofi.box.com/shared/static/xn4i387p017jcuxtcw1m2dzixmxr8mzt.jpg)

A. MacBook with a Mini Display Port but not USB-C  
B. MacBook with a USB-C  
C. Windows laptop without an HDMI port  
D. Laptop does not fit into A, B, or C.  

**#2** Import the Rental Inspection Grades Listing Data using one programming language software and the data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/rental-inspections-grades-data02.txt or Box data URL https://uofi.box.com/shared/static/2e2s3l35l2johejjvf0an39g9ucpxfw2.txt. Make sure that the Inspection Date and Expiration Date columns are formatted as dates or datetimes; not character format. Now, print the structure of the data. **This structure should match the data description below.** 

  - The dataset (a .txt file) contains the 1730 rental properties in Urbana with 7 variables ("columns") per property which includes details about the parcel number, address, grade, inspection date, and more. The rental properties are inspected on a rotating basis and can receive a letter grade of A, B, C, D, F, and N. The best grade is A. The original source is the City of Urbana.

**#3** Web scrape the Champaign County Assessor's [website](https://champaignil.devnetwedge.com/) to extract a property's Net Taxable Value in US Dollars. Do this for the 1st, 2nd, 3rd, 4th, and 9th properties in the dataset from Problem **#2** and print these 5 values.

**#4** Import Market at the Square Vendor Products Data using one programming language software and the data URL https://data.urbanaillinois.us/api/views/6gtk-bwms/rows.tsv?accessType=DOWNLOAD. No need to consider tokenized URLs. Now, print the structure of the data. **This structure should match the data description below.** 

  - The dataset (a .tsv file) contains 1185 rows and 15 columns. The Market at the Square is a seasonal farmer's market where vendors sell vegetables, fruits, meat, and other products. Some vendors may sell non-food items such as arts and crafts. Other vendors are there to promote their organization such as political orgs, candidates, and religious groups. The data contains a listing of products sold by different vendors and with month-by-month details on which products are available, where the availability is Yes or No.

**#5** Using the imported data in Problem **#4**: 

- organize the columns such that the 12 months are the first 12 columns of the dataset and the remaining columns appear after those 12 month columns

- arrange the Company column in alphabetical order and the Product column in alphabetical order. This arrangement should be nested such that the proper order of these two columns would be 

Company | Product
---|---
CompanyA | ProductA
CompanyA | ProductB
CompanyB | ProductA
CompanyB | ProductB
