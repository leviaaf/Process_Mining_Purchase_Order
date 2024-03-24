CREATE TABLE purchase_order_fixyear AS (
    SELECT *
    FROM purchase_order
    WHERE "timestamp" >= '2018-01-01' AND "timestamp" < '2019-02-01'
) WITH DATA;