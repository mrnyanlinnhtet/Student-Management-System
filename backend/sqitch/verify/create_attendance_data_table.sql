-- Verify school management: create_attendance_data_table on pg.

BEGIN;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'attendance_data'
AND column_name IN (
   'id',
   'name',
   'is_active'
);

ROLLBACK;
