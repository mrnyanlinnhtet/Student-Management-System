-- Revert school management: create_attendance_data_table from pg.

BEGIN;

DROP TABLE IF EXISTS attendance_data;

COMMIT;
