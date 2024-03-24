SELECT "spend_classification_text", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "spend_classification_text";