CREATE TABLE po_3way_after_without_srm AS (
SELECT *
FROM po_without_srm
WHERE "item_category" = '3-way match, invoice after GR')
WITH DATA;