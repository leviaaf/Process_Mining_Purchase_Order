CREATE TABLE po_3way_before_gr AS (
SELECT *
FROM po_partition_tm
WHERE "item_category" = '3-way match, invoice before GR')
WITH DATA;