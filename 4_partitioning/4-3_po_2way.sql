CREATE TABLE po_2way AS (
SELECT *
FROM po_partition_tm
WHERE "item_category" = '2-way match')
WITH DATA;