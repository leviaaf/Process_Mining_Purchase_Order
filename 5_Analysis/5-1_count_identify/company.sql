SELECT "company", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "company";