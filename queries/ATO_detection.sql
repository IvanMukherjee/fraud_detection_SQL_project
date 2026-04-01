-- Detects Account Takeover (ATO) pattern:
-- Flags users with rapid consecutive logins from different devices or locations
-- within 1 hour, followed by a debit transaction.
-- Such behavior is commonly associated with compromised accounts and fraudulent activity.
  
  WITH base as (SELECT l1.user_id, l1.location as first_location, l1.device as first_device, l1.login_time as first_login,
  l2.location as second_location, l2.device as second_device, l2.login_time as second_login
  FROM logins as l1
  JOIN logins as l2
  ON l1.user_id=l2.user_id
  AND(l1.location <> l2.location OR l1.device<>l2.device)
  AND l2.login_time>l1.login_time
  AND TIMESTAMPDIFF(HOUR, l1.login_time, l2.login_time) <= 1
  )
  SELECT DISTINCT l.user_id, l.first_location, l.second_location, l.first_login, l.second_login, l.first_device, l.second_device
  FROM base as l
  JOIN transactions as t
  ON l.user_id = t.user_id
  AND t.txn_time>l.second_login
  WHERE (TIMESTAMPDIFF (Hour, l.second_login, t.txn_time)) <= 1
  AND txn_type= 'debit'
  AND txn_amount>=1000;
