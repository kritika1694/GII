Gender Inequality Index Data cleaning and analysis with SQL and visualisation in PowerBI.

Skills : SQL | PowerBI

The project is about: 

Data cleaning in MySQL of Gender Inequality Index across different countries, and designing comprehensive dashboard in Power BI to visualize the various factors interplay with respective Gender inequality index across nations. GII is a composite metric of gender inequality using three dimensions: reproductive health, empowerment and the labour market, given by UNDP. A low GII value indicates low inequality between women and men.

Dataset (https://data.humdata.org/dataset/gender-inequality-index) contains :
   Country, GII, GII Rank, Maternal_mortality_ratio, Adolescent birth rate, parliament_seat_F, F_secondary_educ, M_secondary_educ, LFPR_M, LFPR_F 

Dashboard of GII on PowerBI (Kindly review the file on PowerBI to see dashboard interactions- https://github.com/kritika1694/GII/blob/main/GII%20PowerBI.pbix):

![2](https://github.com/user-attachments/assets/ec96630e-350b-4a87-806e-71a52f348e12)

Summary of data analysis procedure:

 - Data cleaning in MySQL: Checking duplicates; standardising dataset; splitting the dataset table into 2 tables:GII and development level;
                           handling missing values; datatype validation and checking for any outliers.
   
 - Data analysis and Visualizations in PowerBI: Changed column names; Two additional columns created: Education gap and LFPR Gap; DAX formulas for: average GII,
                                                average LFPR_F, average MMR and Gender Parity in Education; Creation of an interactive dashboard.

Insights from the project:

 - The average GII is 0.32, indicating moderate inequality. In the line graph GII closer to 0 suggests less inequality, while a value closer to 1 indicates more inequality.

 - Western European countries have a lower GII, hence less inequality. Whereas the African-Sahel region countries shows greater inequality with high GII.

 - Percentage of Female representation in Parliament increases with level of development and the LFPR gap decreases with increasing development level. Interestingly the Middle human development countries lag 
   behind the Low human development countries in the se parameters

 - Average LFPR (51.57%): The average labor force participation rate for females is 51.57%, showing that just over half of women are active in the labor market,

 - The gender parity index for education is 0.91, suggesting that on average, there are fewer females than males attaining secondary education. Which requires tailored policy making.

 - Also country wise comparison of the secondary education level can be seen. Western European countries faring well in both male and female education level. This shows similar results as GII trends

 - Maternal health through MMR and ABR shows: Higher values in these indicators usually correlate with higher GII, reflecting poorer outcomes for women's health in countries with greater gender inequality.

Implications of this project: 

Gender inequality data analysis along with its drivers across nations gives a comprehensive picture of gender equity status and carry potential policy implications for both State and private organisations.
