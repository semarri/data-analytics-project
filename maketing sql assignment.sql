SELECT * from sql_hr.marketing_campaign;
-- I have chosen the Marketing Camapaign data set as i have experince in dealing with cutomer within retail and events. I also felt my knowledge of this industry would give me a insight to the complex questions needed to anaylise all the information present.

-- 1 the data set
SELECT * from sql_hr.marketing_campaign;

-- 2 Average number Catolog Purchases
SELECT AVG(NumCatalogPurchases) AS  "Catolog prchases" FROM sql_hr.marketing_campaign;

-- 3 I wish to identify the the different types of education levels then in a seperate query identify one specific type.
SELECT * FROM sql_hr.marketing_campaign
GROUP BY Education;

-- 4 I wish to identify a singular type of education, I chose Graduation as i am a graduate of Wolverhampton University. 
SELECT * FROM sql_hr.marketing_campaign
WHERE Education LIKE '%Graduation%';

-- 5 I wish to find the total amount of fruits brought and compare it to the amount of meat products brought
SELECT SUM(MntFruits)
FROM sql_hr.marketing_campaign; 

-- 6 I wish to find the total amount of meat products brought and compared it to the amount offruits brought.
SELECT SUM(MntMeatProducts)
FROM sql_hr.marketing_campaign;

-- 7 i wish to finf out if the customer has kids at home,to see if most of their customers are parents of small children.
SELECT SUM(Kidhome)
FROM sql_hr.marketing_campaign;


-- 8 I wish to highlight the difference in the data betweeen the higher and the lower incomes to later show the buying trends.
SELECT Income, ID, 
CASE
WHEN Income <= 40000 THEN 'POOR'
ELSE 'RICH'
END
FROM sql_hr.marketing_campaign;

