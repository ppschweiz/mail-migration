SELECT username, password, quota
FROM mailbox
WHERE active = '1'
INTO OUTFILE '/tmp/mailboxes.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ','
ESCAPED BY '"'
LINES TERMINATED BY '\n';
SELECT address, goto
FROM alias
WHERE active = '1'
INTO OUTFILE '/tmp/aliases.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ','
ESCAPED BY '"'
LINES TERMINATED BY '\n';
