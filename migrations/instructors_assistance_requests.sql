CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id),
  instructor_id INTEGER NOT NULL REFERENCES instructors(id),
  assignment_id INTEGER REFERENCES assignments(id),
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  started_at TIMESTAMP WITH TIME ZONE NOT NULL,
  completed_at TIMESTAMP WITH TIME ZONE NOT NULL,
  student_feedback TEXT,
  instructor_feedback TEXT
);
