CREATE TABLE po_consignment AS (
SELECT *
FROM po_partition_tm
WHERE "item_category" = 'Consignment')
WITH DATA;