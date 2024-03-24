SELECT "document_type", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "document_type";