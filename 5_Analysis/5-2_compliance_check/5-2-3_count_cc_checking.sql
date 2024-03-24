SELECT 
    "item_category",
    COUNT(DISTINCT CASE WHEN "compliance" = 'compliant' THEN "caseID" END) AS compliant_cases,
    COUNT(DISTINCT CASE WHEN "compliance" = 'incompliant' THEN "caseID" END) AS incompliant_cases,
    COUNT(DISTINCT CASE WHEN "completed" = 'completed' THEN "caseID" END) AS completed_cases,
    COUNT(DISTINCT CASE WHEN "completed" = 'uncompleted' THEN "caseID" END) AS uncompleted_cases,
    ROUND((COUNT(DISTINCT CASE WHEN "compliance" = 'compliant' THEN "caseID" END) / CAST(COUNT(DISTINCT "caseID") AS DECIMAL) * 100), 2) AS compliant_percentage,
    ROUND((COUNT(DISTINCT CASE WHEN "compliance" = 'incompliant' THEN "caseID" END) / CAST(COUNT(DISTINCT "caseID") AS DECIMAL) * 100), 2) AS incompliant_percentage,
    ROUND((COUNT(DISTINCT CASE WHEN "completed" = 'completed' THEN "caseID" END) / CAST(COUNT(DISTINCT "caseID") AS DECIMAL) * 100), 2) AS completed_percentage,
    ROUND((COUNT(DISTINCT CASE WHEN "completed" = 'uncompleted' THEN "caseID" END) / CAST(COUNT(DISTINCT "caseID") AS DECIMAL) * 100), 2) AS uncompleted_percentage
FROM purchase_order_fixyear
GROUP BY "item_category";
