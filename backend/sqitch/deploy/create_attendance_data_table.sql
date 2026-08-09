-- Deploy school management: create_attendance_data_table to pg.

BEGIN;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS attendance_data (
   id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   is_active BOOLEAN DEFAULT TRUE
);

COMMIT;
