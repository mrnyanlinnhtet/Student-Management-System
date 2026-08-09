-- Verify school management: create_student_status_table on pg.

BEGIN;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'student_status'
AND column_name IN (
  'id',
  'name',
  'is_active'
);

ROLLBACK;
