-- Verify school management: create_student_table from pg.

BEGIN;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'students'
AND column_name IN (
    'id',
    'roll_id',
    'name',
    'phone',
    'email',
    'age',
    'address',
    'grade_id',
    'student_status_id',
    'classroom_id',
    'gender',
    'joining_date',
    'is_active'
)

ROLLBACK;
