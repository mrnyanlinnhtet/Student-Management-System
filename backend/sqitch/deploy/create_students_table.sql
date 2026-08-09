-- Deploy school management: create_students_table to pg.

BEGIN;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS students (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  roll_id VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  age VARCHAR(3) NOT NULL,
  address TEXT NOT NULL,
  grade_id UUID NOT NULL,
  classroom_id UUID NOT NULL,
  student_status_id  UUID NOT NULL,
  gender VARCHAR(50) NOT NULL CHECK (gender IN('Male', 'Female', 'Others')),
  joining_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  is_active BOOLEAN DEFAULT TRUE NOT NULL,

  CONSTRAINT fk_grade
   FOREIGN KEY (grade_id)
   REFERENCES grade_data(id),

  CONSTRAINT fk_student_status
   FOREIGN KEY (student_status_id)
   REFERENCES student_status(id),

  CONSTRAINT fk_classroom
   FOREIGN KEY (classroom_id)
   REFERENCES classrooms(id)
);

COMMIT;
