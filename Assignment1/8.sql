SELECT transfers.kind AS Kind, wallets.ledger_location AS Country, 
SUM (transfers.send_amount_scalar) AS Volume 
FROM transfers INNER JOIN wallets
ON transfers.source_wallet_id = wallets.wallet_id
WHERE (transfers.when_created > (NOW() - INTERVAL '1 week')) 
GROUP BY wallets.ledger_location, transfers.kind;