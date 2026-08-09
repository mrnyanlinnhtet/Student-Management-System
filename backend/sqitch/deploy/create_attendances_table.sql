-- Deploy school management: create_attendances_table to pg.

BEGIN;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS attendances (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  attendance_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  student_id UUID NOT NULL,
  attendance_data_id UUID NOT NULL,
  CONSTRAINT fk_student
    FOREIGN KEY (student_id)
    REFERENCES students(id)
    ON DELETE CASCADE,

  CONSTRAINT fk_attendance_data
    FOREIGN KEY (attendance_data_id)
    REFERENCES attendance_data(id)
    ON DELETE CASCADE
);

COMMIT;
