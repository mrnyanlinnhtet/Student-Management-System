-- Deploy school management: create_grade_data_table to pg.

BEGIN;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS grade_data (
 id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 is_active BOOLEAN NOT NULL DEFAULT TRUE
);

COMMIT;
