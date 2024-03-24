SELECT 
    COUNT (*) "event_user"
FROM 
    purchase_order_tm
WHERE 
    "event_user" <> "event_resource";