SELECT 
    "item_category", 
    "activity", 
    COUNT(*) AS count_distinct
FROM 
    purchase_order_tm
GROUP BY 
    "item_category", 
    "activity";