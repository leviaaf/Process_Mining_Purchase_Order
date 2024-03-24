SELECT "item_type", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "item_type";