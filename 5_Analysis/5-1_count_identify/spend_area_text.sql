SELECT "spend_area_text", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "spend_area_text";