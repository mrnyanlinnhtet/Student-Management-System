-- Revert student_management: create_attendances_table from pg.

BEGIN;

DROP TABLE IF EXISTS attendances;

COMMIT;
