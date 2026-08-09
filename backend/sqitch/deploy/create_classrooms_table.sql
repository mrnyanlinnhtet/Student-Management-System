-- Deploy school management: create_classrooms_tale to pg.

BEGIN;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS classrooms (
 id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 room_number VARCHAR(100) NOT NULL UNIQUE,
 building_number VARCHAR(100) UNIQUE,
 capacity INT NOT NULL,
 status_id UUID NOT NULL,
 type_id UUID NOT NULL,

 CONSTRAINT fk_status
  FOREIGN KEY (status_id)
  REFERENCES classroom_status(id),

 CONSTRAINT fk_type
  FOREIGN KEY (type_id)
  REFERENCES classroom_types(id)
);

COMMIT;