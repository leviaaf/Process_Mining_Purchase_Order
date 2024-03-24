CREATE TABLE po_3way_before_srm AS (
SELECT *
FROM po_with_srm
WHERE "item_category" = '3-way match, invoice before GR')
WITH DATA;