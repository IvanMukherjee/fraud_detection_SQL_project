 -- Detects money muling pattern:
-- User receives money (credit) and sends it out (debit)
-- within 15 minutes with less than 10% amount difference
-- This behavior is commonly associated with mule accounts used to move funds quickly.


 SELECT DISTINCT t1.user_id as mule_user, t1.txn_amount AS credit_amount, t2.txn_amount AS debit_amount, 
 TIMESTAMPDIFF(MINUTE, t1.txn_time, t2.txn_time) AS time_diff_minutes
 FROM transactions as t1
 JOIN transactions as t2
 ON t1.user_id=t2.user_id
 AND t2.txn_time>t1.txn_time
 WHERE TIMESTAMPDIFF(Minute, t1.txn_time, t2.txn_time)<=15
 AND t1.txn_type= 'credit'
 AND t2.txn_type= 'debit'
 AND ABS(t1.txn_amount-t2.txn_amount) / t1.txn_amount < 0.1;
