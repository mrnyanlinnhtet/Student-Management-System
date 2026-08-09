-- Revert school management: create_student_status_table from pg.

BEGIN;

DROP TABLE IF EXISTS student_status;

COMMIT;