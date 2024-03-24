SELECT 
    "item_category", 
    "spend_area_text", 
    COUNT(DISTINCT "caseID") AS count_caseID
FROM 
    purchase_order_fixyear
GROUP BY 
    "item_category", 
    "spend_area_text";