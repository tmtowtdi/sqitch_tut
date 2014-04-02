-- Verify hashtags

-- a comment just to make this branch different from master

BEGIN;

SELECT flip_id, hashtag
FROM hashtags
WHERE 0;

ROLLBACK;
