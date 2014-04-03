-- Revert userflips

BEGIN;

DROP VIEW IF EXISTS userflips;
DROP VIEW IF EXISTS userflips;
 CREATE VIEW userflips AS
 SELECT f.id, u.nickname, u.fullname, f.body, f.timestamp
 FROM users u

COMMIT;
