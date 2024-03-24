CREATE TABLE po_3way_after_gr AS (
SELECT *
FROM po_partition_tm
WHERE "item_category" = '3-way match, invoice after GR')
WITH DATA;