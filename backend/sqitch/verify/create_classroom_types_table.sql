-- Verify school management: create_classroom_types_table on pg.

BEGIN;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'classroom_types'
AND column_name IN (
    'id',
    'name',
    'is_active'
)

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'classroom_status'
AND column_name IN (
    'id',
    'name',
    'is_active'
)

ROLLBACK;
