SELECT "item_category", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "item_category";