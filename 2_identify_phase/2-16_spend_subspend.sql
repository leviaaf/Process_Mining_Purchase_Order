SELECT 
    "spend_area_text", 
    "subspend_area_text", 
    COUNT(DISTINCT "caseID") AS count_caseID
FROM 
    purchase_order
GROUP BY 
    "spend_area_text", 
    "subspend_area_text";