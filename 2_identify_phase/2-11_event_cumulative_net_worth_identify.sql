SELECT 
    MIN("event_cumulative_net_worth") AS min_event_cumulative_net_worth,
    AVG("event_cumulative_net_worth") AS avg_event_cumulative_net_worth,
    MAX("event_cumulative_net_worth") AS max_event_cumulative_net_worth
FROM 
    purchase_order_tm;