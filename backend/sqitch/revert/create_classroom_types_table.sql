-- Revert school management: create_classroom_types_table from pg.

BEGIN;

DROP TABLE IF EXISTS classroom_types;

DROP TABLE IF EXISTS classroom_status;

COMMIT;
