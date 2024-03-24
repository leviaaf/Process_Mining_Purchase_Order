CREATE TABLE po_with_srm AS (
SELECT *
FROM po_partition_tm
WHERE "caseID" IN (
    SELECT DISTINCT "caseID"
    FROM po_partition_tm
    WHERE "activity" LIKE '%SRM%')
) WITH DATA;