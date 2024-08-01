SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    (COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_churn)) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Gender;

	SELECT 
    Contract, 
    COUNT(Contract) AS TotalCount,
    (COUNT(Contract) * 1.0 / (SELECT COUNT(*) FROM stg_churn)) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Contract;

		SELECT Customer_Status,COUNT(Customer_Status) AS TotalCount,Sum(Total_Revenue)as TotalRev,
	Sum(Total_Revenue)/(Select Sum(Total_Revenue) FROM stg_churn)*100 AS RevPercentage
FROM 
    stg_churn
GROUP BY 
    Customer_Status;


	SELECT 
    City, 
    COUNT(City) AS TotalCount,
    (COUNT(City) * 100.0 / (SELECT COUNT(*) FROM stg_churn)) AS Percentage
FROM stg_churn
GROUP BY City
ORDER by percentage desc;

SELECT DISTINCT Internet_Type
FROM stg_Churn
