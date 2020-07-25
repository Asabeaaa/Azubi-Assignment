SELECT COUNT (atx_id)FROM agent_transactions
WHERE EXTRACT (YEAR FROM when_created) = 2018
GROUP BY EXTRACT(MONTH FROM when_created);