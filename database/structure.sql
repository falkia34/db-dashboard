CREATE TABLE campuses (
  id INT NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL UNIQUE,
  address VARCHAR(255) NOT NULL UNIQUE,
  distance INT NOT NULL,
  bus_number INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE faculties (
  id INT NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL UNIQUE,
  dean TEXT NOT NULL,
  building TEXT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE schools (
  id INT NOT NULL UNIQUE,
  faculty_id INT NOT NULL,
  campus_id INT NOT NULL,
  name VARCHAR(255) NOT NULL UNIQUE,
  building TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (faculty_id) REFERENCES faculties (id),
  FOREIGN KEY (campus_id) REFERENCES campuses (id)
);

CREATE TABLE programmes (
  code INT NOT NULL UNIQUE,
  school_id INT NOT NULL,
  title VARCHAR(255) NOT NULL UNIQUE,
  level TEXT NOT NULL,
  duration INT NOT NULL,
  PRIMARY KEY (code),
  FOREIGN KEY (school_id) REFERENCES schools (id)
);

CREATE TABLE lecturers (
  id INT NOT NULL UNIQUE,
  school_id INT NOT NULL,
  supervisor_id INT,
  name TEXT NOT NULL,
  title TEXT NOT NULL,
  office_room TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (school_id) REFERENCES schools (id),
  FOREIGN KEY (supervisor_id) REFERENCES lecturers (id) ON DELETE SET NULL
);

CREATE TABLE students (
  id INT NOT NULL UNIQUE,
  programme_code INT NOT NULL,
  name TEXT NOT NULL,
  birth_at DATETIME NOT NULL,
  enrolled_at DATETIME NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (programme_code) REFERENCES programmes (code)
);

CREATE TABLE courses (
  code INT NOT NULL UNIQUE,
  programme_code INT NOT NULL,
  title TEXT NOT NULL,
  PRIMARY KEY (code),
  FOREIGN KEY (programme_code) REFERENCES programmes (code)
);

CREATE TABLE pre_courses (
  course_code INT NOT NULL,
  pre_course_code INT NOT NULL,
  PRIMARY KEY (course_code, pre_course_code),
  FOREIGN KEY (course_code) REFERENCES courses (code),
  FOREIGN KEY (pre_course_code) REFERENCES courses (code)
);

CREATE TABLE lecturer_courses (
  staff_id INT NOT NULL,
  course_code INT NOT NULL,
  PRIMARY KEY (staff_id, course_code),
  FOREIGN KEY (staff_id) REFERENCES lecturers (id),
  FOREIGN KEY (course_code) REFERENCES courses (code)
);

CREATE TABLE student_courses (
  student_id INT NOT NULL,
  course_code INT NOT NULL,
  year_taken DATETIME NOT NULL,
  semester_taken INT NOT NULL,
  grade_awarded TEXT NOT NULL,
  PRIMARY KEY (student_id, course_code),
  FOREIGN KEY (student_id) REFERENCES students (id),
  FOREIGN KEY (course_code) REFERENCES courses (code)
);

CREATE TABLE committees (
  id INT NOT NULL,
  faculty_id INT NOT NULL,
  title TEXT NOT NULL,
  meeting_frequency INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (faculty_id) REFERENCES faculties (id)
);

CREATE TABLE committee_lecturers (
  staff_id INT NOT NULL,
  committee_id INT NOT NULL,
  faculty_id INT NOT NULL,
  PRIMARY KEY (staff_id, committee_id, faculty_id),
  FOREIGN KEY (staff_id) REFERENCES lecturers (id),
  FOREIGN KEY (committee_id) REFERENCES committees (id),
  FOREIGN KEY (faculty_id) REFERENCES faculties (id)
);

CREATE TABLE clubs (
  id INT NOT NULL,
  campus_id INT NOT NULL,
  name VARCHAR(255) NOT NULL UNIQUE,
  building TEXT NOT NULL,
  phone_number TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (campus_id) REFERENCES campuses (id)
);

CREATE TABLE sports (
  id INT NOT NULL,
  club_id INT NOT NULL,
  name VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (id),
  FOREIGN KEY (club_id) REFERENCES clubs (id)
);
