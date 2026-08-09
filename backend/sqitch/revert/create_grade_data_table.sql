-- Revert school management: create_grade_data_table from pg.

BEGIN;

DROP TABLE IF EXISTS grade_data;

COMMIT;
