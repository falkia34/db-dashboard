export const Queries = {
  1: {
    description:
      "Tampilkan semua jurusan yang berlokasi di 'Toronto Campus', dan urutkan berdasarkan nama jurusan.",
    query:
      "SELECT s.id AS school_id, s.name AS school_name FROM schools s JOIN campuses c ON s.campus_id = c.id  WHERE c.name = 'Toronto Campus' ORDER BY s.name",
  },
  2: {
    description: "Tampilkan semua program studi yang ada di 'Science Faculty'.",
    query:
      "SELECT p.code AS programme_code, p.title AS programme_title FROM programmes p JOIN schools s ON p.school_id = s.id JOIN faculties f ON s.faculty_id = f.id WHERE f.name = 'Faculty of Science'",
  },
  3: {
    description:
      'Tampilkan semua nama dosen yang menjadi anggota komite dan urutkan berdasarkan nama.',
    query:
      'SELECT DISTINCT l.id AS lecturer_id, l.name AS lecturer_name FROM lecturers l JOIN committee_lecturers cl ON l.id = cl.staff_id ORDER BY l.name',
  },
  4: {
    description:
      'Tampilkan semua nama kaprodi dan nama dosen yang berada di dalam program studi yang dipimpinnya. Tampilkan berdasarkan urutan berdasarkan nama kaprodi dan nama dosen yang dipimpinnya.',
    query:
      'SELECT ls.id AS supervisor_id, ls.name AS supervisor_name, l.id AS lecturer_id, l.name AS lecturer_name FROM lecturers ls JOIN lecturers l ON ls.id = l.supervisor_id ORDER BY ls.name, l.name',
  },
  5: {
    description: 'Tampilkan semua dosen yang bukan merupakan anggota komite.',
    query:
      'SELECT l.id AS lecturer_id, l.name AS lecturer_name FROM lecturers l WHERE l.id NOT IN (SELECT DISTINCT cl.staff_id FROM committee_lecturers cl)',
  },
  6: {
    description: 'Tampilkan total jumlah matakuliah untuk setiap program studi.',
    query:
      'SELECT p.code AS programme_code, p.title AS programme_title, COUNT(c.code) AS total_courses FROM programmes p LEFT JOIN courses c ON p.code = c.programme_code GROUP BY p.code',
  },
  7: {
    description:
      'Tampilkan semua dosen beserta matakuliah yang diampunya dan urutkan berdasarkan nama dosen.',
    query:
      'SELECT l.id AS lecturer_id, l.name AS lecturer_name, c.code AS course_code, c.title AS course_title FROM lecturers l JOIN lecturer_courses lc ON l.id = lc.staff_id JOIN courses c ON lc.course_code = c.code ORDER BY l.name',
  },
  8: {
    description:
      'Tampilkan semua nama matakuliah dan nama matakuliah yang menjadi matakuliah prasyaratnya.',
    query:
      'SELECT c1.code AS course_code, c1.title AS course_title, c2.code AS pre_course_code, c2.title AS pre_course_title FROM pre_courses pc JOIN courses c1 ON pc.course_code = c1.code JOIN courses c2 ON pc.pre_course_code = c2.code',
  },
  9: {
    description: 'Tampilkan 5 matakuliah yang memiliki jumlah mahasiswa terbanyak.',
    query:
      'SELECT sc.course_code, c.title AS course_title, COUNT(sc.student_id) AS total_students FROM student_courses sc JOIN courses c ON sc.course_code = c.code GROUP BY sc.course_code, c.title ORDER BY total_students DESC LIMIT 5',
  },
  10: {
    description:
      'Tampilkan matakuliah yang prasyarat yang tidak diambil oleh mahasiswa yang terdaftar di universitas tahun 2010, tetapi matakuliah tersebut diambil pada tahun berikutnya yaitu 2011.',
    query:
      'SELECT DISTINCT sc.student_id, pc.pre_course_code, c.title AS pre_course_title FROM student_courses sc RIGHT JOIN pre_courses pc ON sc.course_code = pc.course_code JOIN courses c ON pc.pre_course_code = c.code WHERE sc.student_id IN (SELECT id FROM students WHERE YEAR(enrolled_at) = 2010) AND YEAR(sc.year_taken) = 2011 EXCEPT SELECT sc.student_id, sc.course_code, c.title FROM student_courses sc JOIN courses c ON sc.course_code = c.code WHERE student_id IN (SELECT id FROM students WHERE YEAR(enrolled_at) = 2010) AND YEAR(sc.year_taken) = 2010',
  },
};
