UPDATE purchase_order_fixyear
SET
    "completed" = CASE
        WHEN "item_category" IN ('3-way match: invoice after GR', '3-way match: invoice before GR', '2-way match') AND
             EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Clear Invoice') THEN 'completed'
        WHEN "item_category" = 'Consignment' AND
             EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Goods Receipt') THEN 'completed'
        ELSE 'uncompleted'
    END,
    "compliance" = CASE
        WHEN "item_category" IN ('3-way match: invoice after GR', '3-way match: invoice before GR') THEN
            CASE
                WHEN EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Goods Receipt') AND
                     EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Clear Invoice') AND
                     EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Invoice Receipt') THEN
                     CASE
                         WHEN (SELECT AVG(CASE WHEN "event_cumulative_net_worth" <> 0 THEN "event_cumulative_net_worth" / "event_cumulative_net_worth" ELSE NULL END) FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Invoice Receipt') = 1 AND
                              (SELECT SUM("event_cumulative_net_worth") FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Goods Receipt') = 
                              (SELECT SUM("event_cumulative_net_worth") FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Invoice Receipt') AND
                              (SELECT COUNT(*) FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Goods Receipt') = 
                              (SELECT COUNT(*) FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Invoice Receipt') THEN 'compliant'
                         ELSE 'incompliant'
                     END
                ELSE 'incompliant'
            END
        WHEN "item_category" = '2-way match' THEN
            CASE
                WHEN EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Clear Invoice') THEN 'compliant'
                ELSE 'incompliant'
            END
        WHEN "item_category" = 'Consignment' THEN
            CASE
                WHEN EXISTS (SELECT 1 FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Goods Receipt') THEN
                     CASE
                         WHEN (SELECT SUM("event_cumulative_net_worth") / COUNT(*) FROM purchase_order_fixyear AS po WHERE po."caseID" = purchase_order_fixyear."caseID" AND po."activity" = 'Record Goods Receipt') = "event_cumulative_net_worth" THEN 'compliant'
                         ELSE 'incompliant'
                     END
                ELSE 'incompliant'
            END
        ELSE 'incompliant'
    END;