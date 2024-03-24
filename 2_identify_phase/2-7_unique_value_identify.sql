SELECT 'purch_doc_category_name' AS column_name, "purch_doc_category_name" AS unique_value FROM (
    SELECT DISTINCT "purch_doc_category_name" FROM purchase_order_tm
) AS t1
UNION ALL
SELECT 'document_type' AS column_name, "document_type" AS unique_value FROM (
    SELECT DISTINCT "document_type" FROM purchase_order_tm
) AS t2
UNION ALL
SELECT 'item_type' AS column_name, "item_type" AS unique_value FROM (
    SELECT DISTINCT "item_type" FROM purchase_order_tm
) AS t3
UNION ALL
SELECT 'spend_classification_text' AS column_name, "spend_classification_text" AS unique_value FROM (
    SELECT DISTINCT "spend_classification_text" FROM purchase_order_tm
) AS t4
UNION ALL
SELECT 'spend_area_text' AS column_name, "spend_area_text" AS unique_value FROM (
    SELECT DISTINCT "spend_area_text" FROM purchase_order_tm
) AS t5
UNION ALL
SELECT 'subspend_area_text' AS column_name, "subspend_area_text" AS unique_value FROM (
    SELECT DISTINCT "subspend_area_text" FROM purchase_order_tm
) AS t6
UNION ALL
SELECT 'company' AS column_name, "company" AS unique_value FROM (
    SELECT DISTINCT "company" FROM purchase_order_tm
) AS t7
UNION ALL
SELECT 'source' AS column_name, "source" AS unique_value FROM (
    SELECT DISTINCT "source" FROM purchase_order_tm
) AS t8;