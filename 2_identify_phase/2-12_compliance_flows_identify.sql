SELECT 
    "item_category", 
    "goods_receipt", 
    "gr_based_iv", 
    COUNT(DISTINCT "caseID") AS count_caseID
FROM 
    purchase_order_tm
GROUP BY 
    "item_category", 
    "goods_receipt", 
    "gr_based_iv";