CREATE TABLE assignments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  duration INTEGER NOT NULL,
  day INTEGER NOT NULL,
  chapter INTEGER NOT NULL
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY,
  assignment_id INTEGER NOT NULL REFERENCES assignments(id),
  student_id INTEGER NOT NULL REFERENCES students(id),
  submission_date DATE NOT NULL,
  duration NUMERIC NOT NULL
);
