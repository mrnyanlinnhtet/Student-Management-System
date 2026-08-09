-- Revert school management: create_classrooms_table from pg.

BEGIN;

DROP TABLE IF EXISTS classrooms;

COMMIT;