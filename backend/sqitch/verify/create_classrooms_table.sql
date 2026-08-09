-- Verify school management: create_classrooms_table on pg.

BEGIN;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'classrooms'
AND columns IN (
    'id',
    'name',
    'room_number',
    'building_number',
    'capacity',
    'status_id',
    'type_id'
);

ROLLBACK;
