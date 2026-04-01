-- Detects Location Anomaly pattern:
-- Identifies users logging in from different locations within 5 minutes.
-- Such rapid location shifts are unlikely and may signal fraudulent access.

SELECT 
    l1.user_id AS account_anomaly,
    COUNT(*) AS anomaly_count
FROM logins l1
JOIN logins l2
  ON l1.user_id = l2.user_id
  AND l2.login_time > l1.login_time
WHERE l1.location <> l2.location
  AND TIMESTAMPDIFF(MINUTE, l1.login_time, l2.login_time) <= 5
GROUP BY l1.user_id
HAVING COUNT(*) >= 1;
