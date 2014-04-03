-- Deploy userflips
-- requires: users
-- requires: flips

BEGIN;

-- SQLite does not support CREATE OR REPLACE VIEW.  If we're re-deploying to a 
-- database that already contains the userflips view, the CREATE VIEW will 
-- explode unless we drop it first.
DROP VIEW IF EXISTS userflips;

CREATE VIEW userflips AS
    SELECT f.id, u.nickname, u.fullname, u.twitter, f.body, f.timestamp
        FROM users u
        JOIN flips f ON u.nickname = f.nickname;

COMMIT;
