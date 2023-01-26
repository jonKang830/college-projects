# Topic
Analyze the correlation between freedom and prosperity


# Motivation
In this project, we will be exploring the Freedom and Prosperity dataset collected by atlantic council. The data scores every country's different aspect of freedom and prosperity. The following are different aspects that this data concerns with. 

<img src="img/figure1.png" alt="Alt text" title="Optional title">
<img src="img/figure2.png" alt="Alt text" title="Optional title">

The website has conducted basic statistical inferences, but it did not conduct a rigorous data analysis. For example, the website only aggregated all variables regarding freedom and all variables regarding prosperity, but it did not specifically look at each of the subcategories regarding freedom and prosperity. In addition, the measure of freedom was not holistic. For example, in terms of economic freedom, only income was being scored, but important factors such as GDP per capita was not calculated. Prompted by the inadequacies of this report, our group want to take a step forward by further look analyze how different freedom is correlated to different aspects of prosperity. 

# Plan
Our general plan is to look at how categories of freedom and prosperity is correlated with each other(visualization, covariance, correlation). Next, based on these calculations, we want to build a decision tree model predicting the level of prosperity based on freedom. 

# Project Deliverables
#### Final Report
+ [html](https://github.com/illinois-stat447/fa22-prj-muhanz2-jk36-haorany3-maf7/blob/main/final_report/final_report.html)
+ [rmd](https://github.com/illinois-stat447/fa22-prj-muhanz2-jk36-haorany3-maf7/blob/main/final_report/final_report.Rmd)
#### Presentation
+ [slides](https://github.com/illinois-stat447/fa22-prj-muhanz2-jk36-haorany3-maf7/blob/main/presentation/presentation-document-updated%203.html)
+ [rmd](https://github.com/illinois-stat447/fa22-prj-muhanz2-jk36-haorany3-maf7/blob/main/presentation/presentation-document-updated.Rmd)
+ [video](https://uofi.app.box.com/s/suyqhkg73witz7yq1jmqfg3qvytphptf)
#### Peer Review
+ [file](https://github.com/illinois-stat447/fa22-prj-muhanz2-jk36-haorany3-maf7/blob/main/Peer%20Review.pdf)

Note: only part of our code is displayed in our final report for demonstration purposes as the original codes are too long.

# Data Source
#### Atlantic Council Freedom and Prosperity Center
+ https://www.atlanticcouncil.org/in-depth-research-reports/report/do-countries-need-freedom-to-achieve-prosperity/#data
#### World Bank
+ Time required to register a property (days): https://data.worldbank.org/indicator/IC.PRP.DURS
+ Procedures to register property (number): https://data.worldbank.org/indicator/IC.PRP.PROC
+ Taxes on income, profits and capital gains (% of total taxes): https://data.worldbank.org/indicator/GC.TAX.YPKG.ZS
+ Literacy rate, adult total (% of people ages 15 and above): https://data.worldbank.org/indicator/SE.ADT.LITR.ZS
+ CPIA business regulatory environment rating (1=low to 6=high): https://data.worldbank.org/indicator/IQ.CPA.BREG.XQ
+ CPIA property rights and rule-based governance rating (1=low to 6=high): https://data.worldbank.org/indicator/IQ.CPA.PROP.XQ
+ Strength of legal rights index (0=weak to 12=strong): https://data.worldbank.org/indicator/IC.LGL.CRED.XQ
+ CO2 emissions (metric tons per capita): https://data.worldbank.org/indicator/EN.ATM.CO2E.PC
+ Forest area (% of land area): https://data.worldbank.org/indicator/AG.LND.FRST.ZS
+ PM2.5 air pollution, mean annual exposure (micrograms per cubic meter): https://data.worldbank.org/indicator/EN.ATM.PM25.MC.M3
+ Level of water stress: freshwater withdrawal as a proportion of available freshwater resources: https://data.worldbank.org/indicator/ER.H2O.FWST.ZS
+ GNI per capita (current international $): https://data.worldbank.org/indicator/NY.GNP.PCAP.PP.CD
+ Inflation, consumer prices (annual %): https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG
+ Unemployment, total (% of total labor force): https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS
+ Life expectancy at birth, total (years): https://data.worldbank.org/indicator/SP.DYN.LE00.IN
+ Diabetes prevalence (% of population ages 20 to 79): https://data.worldbank.org/indicator/SH.STA.DIAB.ZS
