-- Revert student management: create_students_table on pg.

BEGIN;

DROP TABLE IF EXISTS students;

COMMIT;
