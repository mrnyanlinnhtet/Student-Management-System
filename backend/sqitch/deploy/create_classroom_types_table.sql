-- Deploy school management: create_classroom_types_table to pg.

BEGIN;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS classroom_types (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS classroom_status (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE
)

COMMIT;
