WITH agent_withdrawers AS
( SELECT COUNT (agent_id)
 AS net_withdrawers
 FROM agent_transactions
 HAVING COUNT (amount)
 IN (SELECT COUNT (amount) FROM agent_transactions WHERE amount > -1
AND amount !=0 HAVING COUNT (amount) > ( SELECT COUNT (amount)
FROM agent_transactions WHERE amount < 1 AND amount !=0)))
SELECT net_withdrawers
FROM agent_withdrawers;