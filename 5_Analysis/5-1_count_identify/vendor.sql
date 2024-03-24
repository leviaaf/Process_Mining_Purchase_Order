SELECT "vendor", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "vendor";