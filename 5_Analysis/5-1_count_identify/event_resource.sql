SELECT "event_resource", COUNT(*) AS count
FROM purchase_order_fixyear
GROUP BY "event_resource";