SELECT 
    COUNT(CASE WHEN "event_user" LIKE 'user%' THEN 1 END) AS count_user_event_user,
    COUNT(CASE WHEN "event_user" LIKE 'batch%' THEN 1 END) AS count_batch_event_user,
    COUNT(CASE WHEN "event_user" = 'NONE' THEN 1 END) AS count_none_event_user,
    COUNT(CASE WHEN "event_user" IS NULL THEN 1 END) AS count_null_event_user,
    COUNT(CASE WHEN "event_user" NOT LIKE 'user%' AND "event_user" NOT LIKE 'batch%' AND "event_user" <> 'NONE' AND "event_user" IS NOT NULL THEN 1 END) AS count_other_event_user
FROM 
    purchase_order_tm;