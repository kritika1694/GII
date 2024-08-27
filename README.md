Gender Inequality Index Data cleaning and analysis with SQL and visualisation in PowerBI.

Skills : SQL | PowerBI

The project is about: 

Data cleaning in MySQL of Gender Inequality Index across different countries, and designing comprehensive dashboard in Power BI to visualize the various factors interplay with respective Gender inequality index across nations.

What is GII?

GII is a composite metric of gender inequality using three dimensions: reproductive health, empowerment and the labour market. It is a particularly important determinant of mothers physical and mental health, and their autonomy and control over household resources. Low status restricts women's capacity to act in their own and their children's best interests, and even society at large. 
                                                 ![1](https://github.com/user-attachments/assets/a2db42b4-8109-4e65-a384-66ad0b00e48c)


 Dataset  (https://data.humdata.org/dataset/gender-inequality-index)
  
 Dataset contains:
 
  - Country: Name of the country
  - GII : Gender Inequality index of each country. A low GII value indicates low inequality between women and men
  - GII Rank: Gender Inequality ranking of various countries as given by UNDP.
  - Maternal_mortality_ratio: Maternal_mortality_ratio (deaths per100,000 live births) 2013 
  - Adolescent birth rate : Adolescent birth rate (births per 1,000 women ages 15 to 19) 2010/2015
  - parliament_seat_F: Percentage of women Parliamentarians
  - F_secondary_educ: Population with at least some secondary education (% ages 25 and older) Female 2005-2014
  - M_secondary_educ: Population with at least some secondary education (% ages 25 and older) Male 2005-2014
  - LFPR_M : Labour Force Participation Rate for Males
  - LFPR_F : Labour Force Participation Rate for Females

Summary of data analysis procedure:

 - Data cleaning in MySQL: Checking duplicates; standardising dataset; splitting the dataset table into 2 tables:GII and development level;
                           handling missing values; datatype validation and checking for any outliers.
   
 - Data analysis and Visualizations in PowerBI: Changed column names; Two additional columns created: Education gap and LFPR Gap; DAX formulas for: average GII,
                                                average LFPR_F, average MMR and Gender Parity in Education; Creation of an interactive dashboard.

Dashboard of GII on PowerBI (Kindly review the file on PowerBI to see dashboard interactions- https://github.com/kritika1694/GII/blob/main/GII%20PowerBI.pbix):

![2](https://github.com/user-attachments/assets/ec96630e-350b-4a87-806e-71a52f348e12)



Insights from the project:

 - The average GII is 0.32, indicating moderate inequality in the countries represented. In the line graph GII closer to 0 suggests less inequality, while a value closer to 1 indicates more inequality.

 - Western European countries have a lower GII, hence less inequality. Whereas the African-Sahel region countries shows greater inequality with high GII.

 - Percentage of Female representation in Parliament increases with level of development and the LFPR gap decreases with increasing development level. Interestingly the Middle human development countries lag 
   behind the Low human development countries in the se parameters

 - Average LFPR (51.57%): The average labor force participation rate for females is 51.57%, showing that just over half of women are active in the labor market,

 - The gender parity index for education is 0.91, suggesting that on average, there are fewer females than males attaining secondary education. Which requires tailored policy making.

 - Also country wise comparison of the secondary education level can be seen. Western European countries faring well in both male and female education level. This shows similar results as GII trends

 - Maternal health through MMR and ABR shows: Higher values in these indicators usually correlate with higher GII, reflecting poorer outcomes for women's health in countries with greater gender inequality.

Implications of this project: 

The information of gender inequality among nations and its drivers give a comprehensive picture and has policy implications for both State and private organisations.
