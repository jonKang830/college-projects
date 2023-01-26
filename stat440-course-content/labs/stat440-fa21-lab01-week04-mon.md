# STAT 440 Statistical Data Management - Fall 2021
## Week04 Lab01 Mon
### Only the driver should submit this assignment into their individual student repo. Save the filename as lab01-week04-mon-netID.Rmd. Then render this file to .html when completed. 
#### This lab must be submitted within 10 mintues of the end of class time. Any lab submitted after 11:00 am will be deducted 1 point for being late.

**#1** Using Markdown syntax, make a numbered list with the first and last names of everyone at your station followed by a dash then the laptop group the everyone belongs; for example, Chris Kinson - D. Your name should appear in bold text. The possible laptop groups are: 

A. MacBook with a Mini Display Port but not USB-C  
B. MacBook with a USB-C  
C. Windows laptop without an HDMI port  
D. Laptop does not fit into A, B, or C.  

**#2** Import the Rental Inspection Grades Listing Data using one programming language software and the data URL https://github-dev.cs.illinois.edu/stat440-fa21/stat440-fa21-course-content/raw/master/data/rental-inspections-grades-data05.json or Box data URL https://uofi.box.com/shared/static/at5sydtqaals7opqlq35p59xu0f9lsyx.json. Make sure that the Inspection Date and Expiration Date columns are formatted as dates or datetimes; not character format. Now, print the structure of the data. **This structure should match the data description below.** 

  - The dataset (a .json file) contains the 1730 rental properties in Urbana with 7 variables ("columns") per property which includes details about the parcel number, address, grade, inspection date, and more. The rental properties are inspected on a rotating basis and can receive a letter grade of A, B, C, D, F, and N. The best grade is A. The original source is the City of Urbana.

**#3** Web scrape the Champaign County Assessor's [website](https://champaignil.devnetwedge.com/) to extract a property's Net Taxable Value in US Dollars. Do this for the 10th, 20th, 30th, 40th, and 50th properties in the dataset from Problem **#2** and print these 5 values.

**#4** Import Market at the Square Vendor Products Data using one programming language software and the data URL https://data.urbanaillinois.us/api/views/6gtk-bwms/rows.csv?accessType=DOWNLOAD. No need to consider tokenized URLs. Now, print the structure of the data. **This structure should match the data description below.** 

  - The dataset (a .csv file) contains 1185 rows and 15 columns. The Market at the Square is a seasonal farmer's market where vendors sell vegetables, fruits, meat, and other products. Some vendors may sell non-food items such as arts and crafts. Other vendors are there to promote their organization such as political orgs, candidates, and religious groups. The data contains a listing of products sold by different vendors and with month-by-month details on which products are available, where the availability is Yes or No.

**#5** Reshape the imported data in Problem **4** such that the columns named as the 12 months of the year become one single column named "Months" with their corresponding Yes or No values named as "Availability". Print the first 10 rows of the reshaped data.
