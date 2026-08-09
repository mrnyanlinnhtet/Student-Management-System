-- Verify school management: create_attendances_table on pg.

BEGIN;

SELECT 1
FROM pg_extension
WHERE extname = 'pgcrypto';

SELECT 1
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'attendances';

SELECT 1
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'attendances'
  AND column_name IN (
      'id',
      'name',
      'attendance_date',
      'student_id'
      'attendance_data_id'
  )
GROUP BY table_name
HAVING COUNT(*) = 5;

SELECT 1
FROM information_schema.table_constraints
WHERE table_schema = 'public'
  AND table_name = 'attendances'
  AND constraint_type = 'PRIMARY KEY';

SELECT 1
FROM information_schema.table_constraints
WHERE table_schema = 'public'
  AND table_name = 'attendances'
  AND constraint_name = 'fk_student'
  AND constraint_type = 'FOREIGN KEY';

SELECT 1
FROM information_schema.table_constraints
WHERE table_schema = 'public'
  AND table_name = 'attendances'
  AND constraint_name = 'fk_attendance_data'
  AND constraint_type = 'FOREIGN KEY';

ROLLBACK;
