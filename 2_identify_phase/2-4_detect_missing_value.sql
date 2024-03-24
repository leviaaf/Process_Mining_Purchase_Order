SELECT 
    'eventID' AS column_name, 
    COUNT(*) - COUNT("eventID") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'caseID' AS column_name, 
    COUNT(*) - COUNT("caseID") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'purchasing_document' AS column_name, 
    COUNT(*) - COUNT("purchasing_document") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'item' AS column_name, 
    COUNT(*) - COUNT("item") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'activity' AS column_name, 
    COUNT(*) - COUNT("activity") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'purch_doc_category_name' AS column_name, 
    COUNT(*) - COUNT("purch_doc_category_name") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'item_category' AS column_name, 
    COUNT(*) - COUNT("item_category") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'goods_receipt' AS column_name, 
    COUNT(*) - COUNT("goods_receipt") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'gr_based_iv' AS column_name, 
    COUNT(*) - COUNT("gr_based_iv") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'document_type' AS column_name, 
    COUNT(*) - COUNT("document_type") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'item_type' AS column_name, 
    COUNT(*) - COUNT("item_type") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'spend_classification_text' AS column_name, 
    COUNT(*) - COUNT("spend_classification_text") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'spend_area_text' AS column_name, 
    COUNT(*) - COUNT("spend_area_text") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'subspend_area_text' AS column_name, 
    COUNT(*) - COUNT("subspend_area_text") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'company' AS column_name, 
    COUNT(*) - COUNT("company") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'source' AS column_name, 
    COUNT(*) - COUNT("source") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'vendor' AS column_name, 
    COUNT(*) - COUNT("vendor") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'vendor_name' AS column_name, 
    COUNT(*) - COUNT("vendor_name") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'timestamp' AS column_name, 
    COUNT(*) - COUNT("timestamp") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'event_user' AS column_name, 
    COUNT(*) - COUNT("event_user") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm
UNION ALL
SELECT 
    'event_resource' AS column_name, 
    COUNT(*) - COUNT("event_resource") AS count_null,
    COUNT(*) - COUNT(*) AS missing_value
FROM 
    purchase_order_tm;