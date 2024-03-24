CREATE TABLE po_without_srm AS (
SELECT *
FROM po_partition_tm
WHERE "caseID" NOT IN (
    SELECT DISTINCT "caseID"
    FROM po_partition_tm
    WHERE "activity" LIKE '%SRM%')
) WITH DATA;