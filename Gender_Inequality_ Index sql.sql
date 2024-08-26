SELECT*
FROM gender_ineq_index;

-- Create new staging table to keep original table unaffected

CREATE TABLE gii_staging
LIKE gender_ineq_index;

SELECT*
FROM gii_staging;

INSERT gii_staging
SELECT *
FROM gender_ineq_index;

-- Checking for any duplicates to remove them

WITH duplicate_cte AS
(
SELECT*,
ROW_NUMBER() OVER(PARTITION BY Country, GII, GII_rank,
Maternal_mortality_ratio, Adolescent_birth_rate,
parliament_seat_F, F_secondary_educ, M_secondary_educ, 
LFPR_F, LFPR_M) AS row_num
FROM gender_ineq_index
)
SELECT*
FROM duplicate_cte
WHERE row_num>1;
-- No duplicates found

-- Standardising dataset

SELECT DISTINCT Country
FROM gii_staging
ORDER BY 1;

SELECT Country
FROM gii_staging
WHERE Country LIKE '% develop%'
OR Country LIKE 'develop%';        


SELECT *
FROM gii_staging
WHERE Country LIKE '% development%'
;

-- Dropping column not necessary
ALTER TABLE gii_staging
DROP COLUMN MyUnknownColumn;

SELECT *
FROM gii_staging;

-- Create new table for development level data, nt 
-- to remove development level information from country column 


CREATE TABLE human_development_aggregates AS 
SELECT*
FROM gii_staging
WHERE Country IN ('Low human development', 'Medium human development' ,
'High human development', 'Very high human development');

SELECT*
FROM human_development_aggregates;

-- Dropping empty column from new table 

ALTER TABLE human_development_aggregates
DROP COLUMN GII_Rank
 ;

-- Remove the development level data from table

DELETE 
FROM gii_staging
WHERE Country IN ('Low human development', 'Medium human development' ,
'High human development', 'Very high human development');

-- Handling missing values and assigning null to the blank values

SELECT *
FROM gii_staging
;

UPDATE gii_staging
SET GII= NULLIF(GII, ''),
GII_rank = NULLIF(GII_rank, ''),
Maternal_mortality_ratio = NULLIF(Maternal_mortality_ratio, ''),
Adolescent_birth_rate= NULLIF(Adolescent_birth_rate, ''),
parliament_seat_F= NULLIF(parliament_seat_F, ''),
F_secondary_educ= NULLIF(F_secondary_educ, ''),
M_secondary_educ= NULLIF(M_secondary_educ, ''),
LFPR_F= NULLIF(LFPR_F, ''),
LFPR_M= NULLIF(LFPR_M, '');

-- 	Putting -1 as placeholder value for GII_rank, MMF, ABR
--  Putting 0 for empty values for rest

UPDATE gii_staging
SET GII= IFNULL(GII, 0),
GII_rank = IFNULL(GII_rank, -1),
Maternal_mortality_ratio = IFNULL(Maternal_mortality_ratio, -1),
Adolescent_birth_rate= IFNULL(Adolescent_birth_rate, -1),
parliament_seat_F= IFNULL(parliament_seat_F, 0),
F_secondary_educ= IFNULL(F_secondary_educ, 0),
M_secondary_educ= IFNULL(M_secondary_educ, 0),
LFPR_F= IFNULL(LFPR_F, 0),
LFPR_M= IFNULL(LFPR_M, 0);


SELECT*
FROM gii_staging
ORDER BY GII ASC;

-- Data type validation

ALTER TABLE gii_staging
MODIFY COLUMN GII_rank INT,
MODIFY COLUMN Adolescent_birth_rate INT,
MODIFY COLUMN GII  DECIMAL(5,3)

;

-- Checking for outliers
SELECT* 
FROM gii_staging
WHERE 
     GII > 1 OR
     Maternal_mortality_ratio > 1000 
      ;
 -- Sorting countries in ascending alphabetical order
SELECT *
FROM gii_staging
ORDER BY  Country;

 
 
 
 




