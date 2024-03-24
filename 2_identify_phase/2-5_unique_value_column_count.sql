SELECT column_name, count_unique_value
FROM (
    SELECT 'eventID' AS column_name, COUNT(DISTINCT "eventID") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'caseID' AS column_name, COUNT(DISTINCT "caseID") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'purchasing_document' AS column_name, COUNT(DISTINCT "purchasing_document") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'item' AS column_name, COUNT(DISTINCT "item") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'activity' AS column_name, COUNT(DISTINCT "activity") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'vendor' AS column_name, COUNT(DISTINCT "vendor") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'vendor_name' AS column_name, COUNT(DISTINCT "vendor_name") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'event_user' AS column_name, COUNT(DISTINCT "event_user") AS count_unique_value FROM purchase_order_tm
    UNION ALL
    SELECT 'event_resource' AS column_name, COUNT(DISTINCT "event_resource") AS count_unique_value FROM purchase_order_tm
) AS counts;