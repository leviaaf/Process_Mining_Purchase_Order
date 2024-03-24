SELECT 
    "eventID",
    COUNT(*) AS duplicate_count
FROM 
    purchase_order_tm
GROUP BY 
    "eventID"
HAVING 
    COUNT(*) > 1;