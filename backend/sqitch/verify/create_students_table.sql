-- Verify student management: create_student_table from pg.

BEGIN;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'students'
AND column_name IN (
    'id',
    'name',
    'phone',
    'email',
    'age',
    'address',
    'grade',
    'gender',
    'joining_date'
)

ROLLBACK;
