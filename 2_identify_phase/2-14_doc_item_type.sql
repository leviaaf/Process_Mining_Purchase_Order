SELECT 
    "document_type", 
    "item_type", 
    COUNT(DISTINCT "caseID") AS count_caseID
FROM 
    purchase_order
GROUP BY 
    "document_type", 
    "item_type";