SELECT DISTINCT v.customer_id, COUNT(v.visit_id) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions t on t.visit_id = v.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
