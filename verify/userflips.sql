-- Verify userflips

BEGIN;

SELECT id, nickname, fullname, twitter, body, timestamp
FROM userflips
WHERE 0;

ROLLBACK;
