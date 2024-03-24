CREATE TABLE po_3way_after_srm AS (
SELECT *
FROM po_with_srm
WHERE "item_category" = '3-way match, invoice after GR')
WITH DATA;