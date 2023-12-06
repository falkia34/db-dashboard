-- Dummy data untuk tabel campuses
INSERT INTO
  campuses (id, name, address, distance, bus_number)
VALUES
  (1, 'Toronto Campus', '123 Main Street', 5, 101),
  (2, 'City College Campus', '456 Oak Avenue', 10, 202),
  (3, 'Northside Campus', '789 Elm Road', 8, 303);

-- Dummy data untuk tabel faculties
INSERT INTO
  faculties (id, name, dean, building)
VALUES
  (1, 'Faculty of Science', 'Dr. Smith', 'Science Building'),
  (2, 'Faculty of Language and Arts', 'Prof. Johnson', 'Arts Building'),
  (3, 'Faculty of Engineering', 'Dr. Williams', 'Engineering Building'),
  (4, 'Faculty of Medicine', 'Dr. Brown', 'Medical Center'),
  (5, 'Faculty of Business', 'Prof. Davis', 'Business Complex');

-- Dummy data untuk tabel schools
INSERT INTO
  schools (id, faculty_id, campus_id, name, building)
VALUES
  (1, 1, 1, 'School of Mechanical Engineering', 'Engineering Building C'),
  (2, 2, 2, 'School of Literature', 'Literature Building B'),
  (3, 3, 1, 'School of Computer Science', 'Computer Science Building A'),
  (4, 4, 3, 'School of Medicine', 'Medical Sciences Building D'),
  (5, 5, 2, 'School of Business Administration', 'Business Building E');

-- Dummy data untuk tabel programmes
INSERT INTO
  programmes (code, school_id, title, level, duration)
VALUES
  (101, 1, 'Computer Engineering', 'Bachelor', 4),
  (102, 2, 'English Literature', 'Bachelor', 3),
  (103, 3, 'Mechanical Design', 'Master', 2),
  (104, 4, 'Medical Science', 'Doctorate', 5),
  (105, 5, 'Business Management', 'Bachelor', 4),
  (106, 1, 'Data Science', 'Master', 2),
  (107, 2, 'Creative Writing', 'Bachelor', 3),
  (108, 3, 'Industrial Engineering', 'Bachelor', 4),
  (109, 4, 'Pharmacy', 'Master', 2),
  (110, 5, 'Marketing', 'Bachelor', 3),
  (111, 1, 'Artificial Intelligence', 'Master', 2),
  (112, 2, 'Comparative Literature', 'Bachelor', 3),
  (113, 3, 'Aerospace Engineering', 'Bachelor', 4),
  (114, 4, 'Nursing', 'Bachelor', 4),
  (115, 5, 'Finance', 'Master', 2);

-- Dummy data untuk tabel lecturers
INSERT INTO
  lecturers (id, school_id, supervisor_id, name, title, office_room)
VALUES
  -- Dummy data untuk School of Computer Science (school_id: 1)
  (1, 1, NULL, 'Dr. Michael Johnson', 'Professor', 'Room CS-101'),
  (2, 1, 1, 'Dr. Emily Roberts', 'Associate Professor', 'Room CS-101'),
  (3, 1, 1, 'Prof. David Smith', 'Assistant Professor', 'Room CS-102'),
  (4, 1, 1, 'Dr. Jessica Wong', 'Lecturer', 'Room CS-101'),
  (5, 1, 1, 'Prof. Andrew Lee', 'Lecturer', 'Room CS-102'),
  (6, 1, 1, 'Dr. Olivia Brown', 'Assistant Professor', 'Room CS-102'),
  (7, 1, 1, 'Prof. Daniel Taylor', 'Associate Professor', 'Room CS-101'),
  (8, 1, 1, 'Dr. Sophia Martinez', 'Professor', 'Room CS-102'),
  (9, 1, 1, 'Prof. Ethan Clark', 'Lecturer', 'Room CS-101'),
  (10, 1, 1, 'Dr. Lily Johnson', 'Assistant Professor', 'Room CS-102'),
  -- Dummy data untuk School of Literature (school_id: 2)
  (11, 2, NULL, 'Dr. Sarah Wilson', 'Professor', 'Room LIT-201'),
  (12, 2, 11, 'Prof. Samuel Adams', 'Associate Professor', 'Room LIT-201'),
  (13, 2, 11, 'Dr. Emma Turner', 'Assistant Professor', 'Room LIT-201'),
  (14, 2, 11, 'Prof. Noah Evans', 'Lecturer', 'Room LIT-202'),
  (15, 2, 11, 'Dr. Lily Parker', 'Lecturer', 'Room LIT-202'),
  (16, 2, 11, 'Prof. Matthew Wright', 'Assistant Professor', 'Room LIT-202'),
  (17, 2, 11, 'Dr. Ava Foster', 'Associate Professor', 'Room LIT-201'),
  (18, 2, 11, 'Prof. Benjamin Garcia', 'Professor', 'Room LIT-202'),
  (19, 2, 11, 'Dr. Harper Collins', 'Lecturer', 'Room LIT-202'),
  (20, 2, 11, 'Prof. Victoria Murphy', 'Assistant Professor', 'Room LIT-201'),
  -- Dummy data untuk School of Mechanical Engineering (school_id: 3)
  (21, 3, NULL, 'Dr. Mark Johnson', 'Professor', 'Room ME-301'),
  (22, 3, 21, 'Prof. Emily Watson', 'Associate Professor', 'Room ME-302'),
  (23, 3, 21, 'Dr. Daniel Harris', 'Assistant Professor', 'Room ME-302'),
  (24, 3, 21, 'Prof. Olivia Turner', 'Lecturer', 'Room ME-302'),
  (25, 3, 21, 'Dr. Ethan Adams', 'Lecturer', 'Room ME-301'),
  (26, 3, 21, 'Prof. Sophia White', 'Assistant Professor', 'Room ME-301'),
  (27, 3, 21, 'Dr. Noah Martinez', 'Associate Professor', 'Room ME-301'),
  (28, 3, 21, 'Prof. Lily Clark', 'Professor', 'Room ME-302'),
  (29, 3, 21, 'Dr. Matthew Hill', 'Lecturer', 'Room ME-301'),
  (30, 3, 21, 'Prof. Harper Martin', 'Assistant Professor', 'Room ME-302'),
  -- Dummy data untuk School of Medicine (school_id: 4)
  (31, 4, NULL, 'Dr. Sarah Adams', 'Professor', 'Room MED-401'),
  (32, 4, 31, 'Prof. Daniel Wilson', 'Associate Professor', 'Room MED-401'),
  (33, 4, 31, 'Dr. Emma Roberts', 'Assistant Professor', 'Room MED-401'),
  (34, 4, 31, 'Prof. Noah Turner', 'Lecturer', 'Room MED-401'),
  (35, 4, 31, 'Dr. Lily Parker', 'Lecturer', 'Room MED-402'),
  (36, 4, 31, 'Prof. Matthew Evans', 'Assistant Professor', 'Room MED-402'),
  (37, 4, 31, 'Dr. Ava Foster', 'Associate Professor', 'Room MED-401'),
  (38, 4, 31, 'Prof. Benjamin Garcia', 'Professor', 'Room MED-402'),
  (39, 4, 31, 'Dr. Harper Collins', 'Lecturer', 'Room MED-402'),
  (40, 4, 31, 'Prof. Victoria Murphy', 'Assistant Professor', 'Room MED-402'),
  -- Dummy data untuk School of Business Administration (school_id: 5)
  (41, 5, NULL, 'Dr. Olivia Johnson', 'Professor', 'Room BA-501'),
  (42, 5, 41, 'Prof. Andrew Smith', 'Associate Professor', 'Room BA-502'),
  (43, 5, 41, 'Dr. Emily Davis', 'Assistant Professor', 'Room BA-502'),
  (44, 5, 41, 'Prof. Daniel Brown', 'Lecturer', 'Room BA-501'),
  (45, 5, 41, 'Dr. Sophia Clark', 'Lecturer', 'Room BA-501'),
  (46, 5, 41, 'Prof. Ethan Martinez', 'Assistant Professor', 'Room BA-501'),
  (47, 5, 41, 'Dr. Lily Turner', 'Associate Professor', 'Room BA-501'),
  (48, 5, 41, 'Prof. Noah Adams', 'Professor', 'Room BA-502'),
  (49, 5, 41, 'Dr. Harper Wright', 'Lecturer', 'Room BA-502'),
  (50, 5, 41, 'Prof. Victoria Hill', 'Assistant Professor', 'Room BA-502');

-- Dummy data untuk tabel students
INSERT INTO
  students (id, programme_code, name, birth_at, enrolled_at)
VALUES
  -- Dummy data untuk programme_code 101 (Contoh: Computer Engineering)
  (1, 101, 'Darrick Gerhold', '1993-05-15', '2010-09-01'),
  (2, 101, 'Natassia Jimpson', '1992-02-28', '2010-09-01'),
  (3, 101, 'Hanna Nell', '1994-11-10', '2010-09-01'),
  (4, 101, 'Birch Bohea', '1993-08-20', '2010-09-01'),
  (5, 101, 'Vinnie Huggens', '1992-04-05', '2010-09-01'),
  (6, 101, 'Matti McKerton', '1994-10-18', '2010-09-01'),
  (7, 101, 'Nikaniki Milkin', '1993-12-25', '2010-09-01'),
  (8, 101, 'Poppy Pressman', '1992-07-30', '2010-09-01'),
  (9, 101, 'Rowan Kimmerling', '1994-09-12', '2010-09-01'),
  (10, 101, 'Aubrette Raiment', '1993-03-08', '2010-09-01'),
  (11, 101, 'Kin Roebuck', '1992-06-22', '2010-09-01'),
  (12, 101, 'Truman Breton', '1994-04-14', '2010-09-01'),
  (13, 101, 'Cully Malkinson', '1993-01-27', '2010-09-01'),
  (14, 101, 'Livy Vivers', '1992-08-03', '2010-09-01'),
  (15, 101, 'Virginie Bonnor', '1994-12-09', '2010-09-01'),
  -- Dummy data untuk programme_code 102 (Contoh: English Literature)
  (16, 102, 'Geoff Paur', '1993-09-20', '2010-09-01'),
  (17, 102, 'Hyman Janoch', '1994-06-12', '2010-09-01'),
  (18, 102, 'Aurthur Lattka', '1992-01-05', '2010-09-01'),
  (19, 102, 'Ransell Nigh', '1994-03-30', '2010-09-01'),
  (20, 102, 'Heda Dragoe', '1993-10-15', '2010-09-01'),
  (21, 102, 'Denys Forsaith', '1992-05-28', '2010-09-01'),
  (22, 102, 'Tessa Seniour', '1994-08-22', '2010-09-01'),
  (23, 102, 'Merrill Apted', '1993-11-17', '2010-09-01'),
  (24, 102, 'Athene Rase', '1992-02-10', '2010-09-01'),
  (25, 102, 'Edan Tomkiss', '1994-07-05', '2010-09-01'),
  (26, 102, 'Deb Hanvey', '1993-12-28', '2010-09-01'),
  (27, 102, 'Dolorita Oriel', '1992-09-01', '2010-09-01'),
  (28, 102, 'Amelina Duncan', '1994-04-18', '2010-09-01'),
  (29, 102, 'Orelie Stilgo', '1993-01-13', '2010-09-01'),
  (30, 102, 'Oralle Drinkhall', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 103 (Contoh: Mechanical Design)
  (31, 103, 'Odette Gerdts', '1993-08-12', '2010-09-01'),
  (32, 103, 'Hersch Ranking', '1994-05-25', '2010-09-01'),
  (33, 103, 'Herman O', '1992-02-18', '2010-09-01'),
  (34, 103, 'Aldon Oty', '1994-10-05', '2010-09-01'),
  (35, 103, 'Ethel Briamo', '1993-12-30', '2010-09-01'),
  (36, 103, 'Catharine De Gouy', '1992-07-15', '2010-09-01'),
  (37, 103, 'Hirsch Trees', '1994-09-20', '2010-09-01'),
  (38, 103, 'Dido Strand', '1993-04-17', '2010-09-01'),
  (39, 103, 'Obed Evitts', '1992-01-10', '2010-09-01'),
  (40, 103, 'Osbourne Doughton', '1994-06-05', '2010-09-01'),
  (41, 103, 'Mady Boij', '1993-11-28', '2010-09-01'),
  (42, 103, 'Benn Fratczak', '1992-10-01', '2010-09-01'),
  (43, 103, 'Madelaine Wane', '1994-03-18', '2010-09-01'),
  (44, 103, 'Emmett Folliott', '1993-02-13', '2010-09-01'),
  (45, 103, 'Sofie Waeland', '1992-07-07', '2010-09-01'),
  -- Dummy data untuk programme_code 104 (Contoh: Medical Science)
  (46, 104, 'Gilles Ney', '1993-09-02', '2010-09-01'),
  (47, 104, 'Barbara-anne Waghorn', '1994-06-15', '2010-09-01'),
  (48, 104, 'Morgen Ballaam', '1992-01-28', '2010-09-01'),
  (49, 104, 'Raddie Nussen', '1994-03-10', '2010-09-01'),
  (50, 104, 'Meade Schultz', '1993-10-25', '2010-09-01'),
  (51, 104, 'Ruperto Luttger', '1992-05-18', '2010-09-01'),
  (52, 104, 'Filia Garfirth', '1994-08-10', '2010-09-01'),
  (53, 104, 'Tana Dargue', '1993-11-05', '2010-09-01'),
  (54, 104, 'Randell Stubbert', '1992-02-20', '2010-09-01'),
  (55, 104, 'Lew Sawrey', '1994-07-15', '2010-09-01'),
  (56, 104, 'Burke Le Grove', '1993-12-28', '2010-09-01'),
  (57, 104, 'Whitby Ingreda', '1992-09-01', '2010-09-01'),
  (58, 104, 'Vallie Rangeley', '1994-04-18', '2010-09-01'),
  (59, 104, 'Bunni Staggs', '1993-01-13', '2010-09-01'),
  (60, 104, 'Chrisse Drewitt', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 105 (Contoh: Business Management)
  (61, 105, 'Ganny Prahm', '1993-08-12', '2010-09-01'),
  (62, 105, 'Page Drever', '1994-05-25', '2010-09-01'),
  (63, 105, 'Agace Tommaseo', '1992-01-18', '2010-09-01'),
  (64, 105, 'Georgeanna Wraight', '1994-10-05', '2010-09-01'),
  (65, 105, 'Ali Tumber', '1993-12-30', '2010-09-01'),
  (66, 105, 'Judie O', '1992-07-15', '2010-09-01'),
  (67, 105, 'Caryn Juggings', '1994-09-20', '2010-09-01'),
  (68, 105, 'Catharine Whaley', '1993-04-17', '2010-09-01'),
  (69, 105, 'Terrye Brislane', '1992-01-10', '2010-09-01'),
  (70, 105, 'Gusti Gonin', '1994-06-05', '2010-09-01'),
  (71, 105, 'Nita Hegdonne', '1993-11-28', '2010-09-01'),
  (72, 105, 'Rozanne Shevell', '1992-10-01', '2010-09-01'),
  (73, 105, 'Audrie Purselow', '1994-03-18', '2010-09-01'),
  (74, 105, 'Beverley Brabender', '1993-02-13', '2010-09-01'),
  (75, 105, 'Felice Earey', '1992-07-07', '2010-09-01'),
  -- Dummy data untuk programme_code 106 (Contoh: Data Science)
  (76, 106, 'Katy Jirus', '1993-09-02', '2010-09-01'),
  (77, 106, 'Georgie Mattevi', '1994-06-15', '2010-09-01'),
  (78, 106, 'Adel Kibbe', '1992-01-28', '2010-09-01'),
  (79, 106, 'Saraann Lawton', '1994-03-10', '2010-09-01'),
  (80, 106, 'Sergei Hise', '1993-10-25', '2010-09-01'),
  (81, 106, 'Zolly Meedendorpe', '1992-05-18', '2010-09-01'),
  (82, 106, 'Almira Ebbles', '1994-08-10', '2010-09-01'),
  (83, 106, 'Drusy Outerbridge', '1993-11-05', '2010-09-01'),
  (84, 106, 'Caryl Joscelyne', '1992-02-20', '2010-09-01'),
  (85, 106, 'Darrick Gilbody', '1994-07-15', '2010-09-01'),
  (86, 106, 'Cherie Kilgallon', '1993-12-28', '2010-09-01'),
  (87, 106, 'Saunder Janota', '1992-09-01', '2010-09-01'),
  (88, 106, 'Lurette Krebs', '1994-04-18', '2010-09-01'),
  (89, 106, 'Abbe Dallin', '1993-01-13', '2010-09-01'),
  (90, 106, 'Ruperta Dunford', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 107 (Contoh: Creative Writing)
  (91, 107, 'Demetris Laddle', '1993-08-12', '2010-09-01'),
  (92, 107, 'Al Krollman', '1994-05-25', '2010-09-01'),
  (93, 107, 'Sven McBrady', '1992-01-18', '2010-09-01'),
  (94, 107, 'Neal Lyptrit', '1994-10-05', '2010-09-01'),
  (95, 107, 'Lurette Faircloth', '1993-12-30', '2010-09-01'),
  (96, 107, 'Cori Hamm', '1992-07-15', '2010-09-01'),
  (97, 107, 'Dun Cartan', '1994-09-20', '2010-09-01'),
  (98, 107, 'Stearn Oller', '1993-04-17', '2010-09-01'),
  (99, 107, 'Sindee Westbrook', '1992-01-10', '2010-09-01'),
  (100, 107, 'Neely Standidge', '1994-06-05', '2010-09-01'),
  (101, 107, 'Noella Tinker', '1993-11-28', '2010-09-01'),
  (102, 107, 'Pet Hearty', '1992-10-01', '2010-09-01'),
  (103, 107, 'Drusilla Thomasset', '1994-03-18', '2010-09-01'),
  (104, 107, 'Felicle Moppett', '1993-02-13', '2010-09-01'),
  (105, 107, 'Natty Blankenship', '1992-07-07', '2010-09-01'),
  -- Dummy data untuk programme_code 108 (Contoh: Industrial Engineering)
  (106, 108, 'Gilly Kalinovich', '1993-09-02', '2010-09-01'),
  (107, 108, 'Karon Pernell', '1994-06-15', '2010-09-01'),
  (108, 108, 'Tammara Dungay', '1992-01-28', '2010-09-01'),
  (109, 108, 'Delbert Barstowk', '1994-03-10', '2010-09-01'),
  (110, 108, 'Jaye Jados', '1993-10-25', '2010-09-01'),
  (111, 108, 'Megen Pawle', '1992-05-18', '2010-09-01'),
  (112, 108, 'Charil Crayk', '1994-08-10', '2010-09-01'),
  (113, 108, 'Peirce Spadaro', '1993-11-05', '2010-09-01'),
  (114, 108, 'Ban Meo', '1992-02-20', '2010-09-01'),
  (115, 108, 'Zerk Lohde', '1994-07-15', '2010-09-01'),
  (116, 108, 'Cordi McKnockiter', '1993-12-28', '2010-09-01'),
  (117, 108, 'Danny Ashwin', '1992-09-01', '2010-09-01'),
  (118, 108, 'Tiff Croxley', '1994-04-18', '2010-09-01'),
  (119, 108, 'Tybalt Cressy', '1993-01-13', '2010-09-01'),
  (120, 108, 'Kristoforo Groome', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 109 (Contoh: Pharmacy)
  (121, 109, 'Cynthea Wittier', '1993-08-12', '2010-09-01'),
  (122, 109, 'Cristobal Dacca', '1994-05-25', '2010-09-01'),
  (123, 109, 'Timofei Cluitt', '1992-01-18', '2010-09-01'),
  (124, 109, 'Angelita Conneely', '1994-10-05', '2010-09-01'),
  (125, 109, 'Itch Patise', '1993-12-30', '2010-09-01'),
  (126, 109, 'Merv Megahey', '1992-07-15', '2010-09-01'),
  (127, 109, 'Gipsy Veschambre', '1994-09-20', '2010-09-01'),
  (128, 109, 'Ddene Lyptrit', '1993-04-17', '2010-09-01'),
  (129, 109, 'Grier Mecchi', '1992-01-10', '2010-09-01'),
  (130, 109, 'Prue Vaud', '1994-06-05', '2010-09-01'),
  (131, 109, 'George Gerold', '1993-11-28', '2010-09-01'),
  (132, 109, 'Delcine Poulston', '1992-10-01', '2010-09-01'),
  (133, 109, 'Kasper Lidgely', '1994-03-18', '2010-09-01'),
  (134, 109, 'Kele Jennison', '1993-02-13', '2010-09-01'),
  (135, 109, 'Delbert O', '1992-07-07', '2010-09-01'),
  -- Dummy data untuk programme_code 110 (Contoh: Marketing)
  (136, 110, 'Boothe Beaten', '1993-09-02', '2010-09-01'),
  (137, 110, 'Mariele Eblein', '1994-06-15', '2010-09-01'),
  (138, 110, 'Jerry Voules', '1992-01-28', '2010-09-01'),
  (139, 110, 'Elisabeth Cowlishaw', '1994-03-10', '2010-09-01'),
  (140, 110, 'Tye Marlen', '1993-10-25', '2010-09-01'),
  (141, 110, 'Jolynn Benallack', '1992-05-18', '2010-09-01'),
  (142, 110, 'Gardy Hawksby', '1994-08-10', '2010-09-01'),
  (143, 110, 'Zahara MacFadzan', '1993-11-05', '2010-09-01'),
  (144, 110, 'Elmore Merrigans', '1992-02-20', '2010-09-01'),
  (145, 110, 'Sky Greder', '1994-07-15', '2010-09-01'),
  (146, 110, 'Nickey Leggon', '1993-12-28', '2010-09-01'),
  (147, 110, 'Rosina Barok', '1992-09-01', '2010-09-01'),
  (148, 110, 'Donnajean Sandwith', '1994-04-18', '2010-09-01'),
  (149, 110, 'Arie Howes', '1993-01-13', '2010-09-01'),
  (150, 110, 'Suzanne Canelas', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 111 (Contoh: Artificial Intelligence)
  (151, 111, 'Byron Goldby', '1993-08-12', '2010-09-01'),
  (152, 111, 'Elfreda MacKilroe', '1994-05-25', '2010-09-01'),
  (153, 111, 'Eve McLorinan', '1992-01-18', '2010-09-01'),
  (154, 111, 'Gallard Stanman', '1994-10-05', '2010-09-01'),
  (155, 111, 'Nikos Clendennen', '1993-12-30', '2010-09-01'),
  (156, 111, 'Ertha McTrustrie', '1992-07-15', '2010-09-01'),
  (157, 111, 'Quentin Goldthorpe', '1994-09-20', '2010-09-01'),
  (158, 111, 'Kissiah Gibbins', '1993-04-17', '2010-09-01'),
  (159, 111, 'Marjorie Challiner', '1992-01-10', '2010-09-01'),
  (160, 111, 'Jo-anne Cordelette', '1994-06-05', '2010-09-01'),
  (161, 111, 'Quinton Andrichuk', '1993-11-28', '2010-09-01'),
  (162, 111, 'Dita Pinshon', '1992-10-01', '2010-09-01'),
  (163, 111, 'Ad Stubbins', '1994-03-18', '2010-09-01'),
  (164, 111, 'Vivienne Grzegorczyk', '1993-02-13', '2010-09-01'),
  (165, 111, 'Dal Picott', '1992-07-07', '2010-09-01'),
  -- Dummy data untuk programme_code 112 (Contoh: Comparative Literature)
  (166, 112, 'Eran Clew', '1993-09-02', '2010-09-01'),
  (167, 112, 'Bobbe Celier', '1994-06-15', '2010-09-01'),
  (168, 112, 'Leslie Tonsley', '1992-01-28', '2010-09-01'),
  (169, 112, 'Niko Nutkin', '1994-03-10', '2010-09-01'),
  (170, 112, 'Lenard Guard', '1993-10-25', '2010-09-01'),
  (171, 112, 'Allina Pothecary', '1992-05-18', '2010-09-01'),
  (172, 112, 'Shalom Haxbie', '1994-08-10', '2010-09-01'),
  (173, 112, 'Janette Winfindine', '1993-11-05', '2010-09-01'),
  (174, 112, 'Dougy Southerill', '1992-02-20', '2010-09-01'),
  (175, 112, 'Farley Haskell', '1994-07-15', '2010-09-01'),
  (176, 112, 'Donnamarie Claridge', '1993-12-28', '2010-09-01'),
  (177, 112, 'Hank Please', '1992-09-01', '2010-09-01'),
  (178, 112, 'Charlene Litterick', '1994-04-18', '2010-09-01'),
  (179, 112, 'Vonni Gimert', '1993-01-13', '2010-09-01'),
  (180, 112, 'Adele Thorsen', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 113 (Contoh: Aerospace Engineering)
  (181, 113, 'Irvine Bedlington', '1993-08-12', '2010-09-01'),
  (182, 113, 'Nappy Mawby', '1994-05-25', '2010-09-01'),
  (183, 113, 'Marty Illsley', '1992-01-18', '2010-09-01'),
  (184, 113, 'Amara O', '1994-10-05', '2010-09-01'),
  (185, 113, 'Fanchette Tarney', '1993-12-30', '2010-09-01'),
  (186, 113, 'Jane Jessel', '1992-07-15', '2010-09-01'),
  (187, 113, 'Fidelia Robertshaw', '1994-09-20', '2010-09-01'),
  (188, 113, 'Angil Caulwell', '1993-04-17', '2010-09-01'),
  (189, 113, 'Wilburt Fareweather', '1992-01-10', '2010-09-01'),
  (190, 113, 'Clarette Shills', '1994-06-05', '2010-09-01'),
  (191, 113, 'Lavena Gavin', '1993-11-28', '2010-09-01'),
  (192, 113, 'Kariotta Tomasutti', '1992-10-01', '2010-09-01'),
  (193, 113, 'Isabel Hibbart', '1994-03-18', '2010-09-01'),
  (194, 113, 'Tilly Botfield', '1993-02-13', '2010-09-01'),
  (195, 113, 'Joanie Southerden', '1992-07-07', '2010-09-01'),
  -- Dummy data untuk programme_code 114 (Contoh: Nursing)
  (196, 114, 'Starlin Cloney', '1993-09-02', '2010-09-01'),
  (197, 114, 'Anetta Beecham', '1994-06-15', '2010-09-01'),
  (198, 114, 'Roze Betser', '1992-01-28', '2010-09-01'),
  (199, 114, 'Ysabel Tolerton', '1994-03-10', '2010-09-01'),
  (200, 114, 'Janka Nowill', '1993-10-25', '2010-09-01'),
  (201, 114, 'Janine Ticic', '1992-05-18', '2010-09-01'),
  (202, 114, 'Mara Lafee', '1994-08-10', '2010-09-01'),
  (203, 114, 'Samson Gilliard', '1993-11-05', '2010-09-01'),
  (204, 114, 'Immanuel Goldie', '1992-02-20', '2010-09-01'),
  (205, 114, 'Mackenzie Bru', '1994-07-15', '2010-09-01'),
  (206, 114, 'Jackelyn Alderwick', '1993-12-28', '2010-09-01'),
  (207, 114, 'Owen Fantin', '1992-09-01', '2010-09-01'),
  (208, 114, 'Ronny Wimbridge', '1994-04-18', '2010-09-01'),
  (209, 114, 'Madlen Brennenstuhl', '1993-01-13', '2010-09-01'),
  (210, 114, 'Cora Levet', '1992-06-07', '2010-09-01'),
  -- Dummy data untuk programme_code 115 (Contoh: Finance)
  (211, 115, 'Agustin Cheyenne', '1993-08-12', '2010-09-01'),
  (212, 115, 'Crawford Michael', '1994-05-25', '2010-09-01'),
  (213, 115, 'Tades Malser', '1992-01-18', '2010-09-01'),
  (214, 115, 'Melvin Swainsbury', '1994-10-05', '2010-09-01'),
  (215, 115, 'Wit Ugolotti', '1993-12-30', '2010-09-01'),
  (216, 115, 'Vale Eplett', '1992-07-15', '2010-09-01'),
  (217, 115, 'Zarah Domesday', '1994-09-20', '2010-09-01'),
  (218, 115, 'Cordie Farrent', '1993-04-17', '2010-09-01'),
  (219, 115, 'Sile Wetherburn', '1992-01-10', '2010-09-01'),
  (220, 115, 'Susann Braim', '1994-06-05', '2010-09-01'),
  (221, 115, 'Norbie Bosche', '1993-11-28', '2010-09-01'),
  (222, 115, 'Hannis Jorry', '1992-10-01', '2010-09-01'),
  (223, 115, 'Ondrea Dailly', '1994-03-18', '2010-09-01'),
  (224, 115, 'Rosette Budgett', '1993-02-13', '2010-09-01'),
  (225, 115, 'Catriona Stendall', '1992-07-07', '2010-09-01');

-- Dummy data untuk tabel courses
INSERT INTO
  courses (code, programme_code, title)
VALUES
  -- Dummy data untuk Computer Engineering (101)
  (1001, 101, 'Introduction to Programming'),
  (1002, 101, 'Database Management Systems'),
  (1003, 101, 'Web Development Fundamentals'),
  (1004, 101, 'Object-Oriented Programming'),
  (1005, 101, 'Data Structures and Algorithms'),
  (1006, 101, 'Software Engineering Principles'),
  (1007, 101, 'Mobile App Development'),
  (1008, 101, 'Computer Networks'),
  (1009, 101, 'Operating Systems'),
  (1010, 101, 'Cybersecurity Fundamentals'),
  -- Dummy data untuk English Literature (102)
  (2001, 102, 'Introduction to English Literature'),
  (2002, 102, 'Shakespearean Literature'),
  (2003, 102, 'Victorian Literature'),
  (2004, 102, 'American Literature'),
  (2005, 102, 'Modernist Literature'),
  (2006, 102, 'Postcolonial Literature'),
  (2007, 102, 'Literary Theory'),
  (2008, 102, 'Women in Literature'),
  (2009, 102, 'Contemporary Literature'),
  (2010, 102, 'World Literature'),
  -- Dummy data untuk Mechanical Design (103)
  (3001, 104, 'Introduction to Mechanical Engineering'),
  (3002, 104, 'Engineering Mechanics'),
  (3003, 104, 'Thermodynamics'),
  (3004, 104, 'Fluid Mechanics'),
  (3005, 104, 'Machine Design'),
  (3006, 104, 'Material Science'),
  (3007, 104, 'Finite Element Analysis'),
  (3008, 104, 'Manufacturing Processes'),
  (3009, 104, 'Robotics and Automation'),
  (3010, 104, 'Engineering Drawing'),
  -- Dummy data untuk Medical Science (104)
  (4001, 105, 'Introduction to Medical Science'),
  (4002, 105, 'Human Anatomy'),
  (4003, 105, 'Physiology'),
  (4004, 105, 'Biochemistry'),
  (4005, 105, 'Pharmacology'),
  (4006, 105, 'Microbiology'),
  (4007, 105, 'Immunology'),
  (4008, 105, 'Pathology'),
  (4009, 105, 'Medical Genetics'),
  (4010, 105, 'Clinical Medicine');

-- Dummy data untuk tabel pre_courses
INSERT INTO
  pre_courses (course_code, pre_course_code)
VALUES
  (1002, 1001), -- Database Management Systems requires Introduction to Programming
  (1002, 1005), -- Database Management Systems requires Data Structures and Algorithms
  (1003, 1001), -- Web Development Fundamentals requires Introduction to Programming
  (1004, 1001), -- Object-Oriented Programming requires Introduction to Programming
  (1006, 1004), -- Software Engineering Principles requires Object-Oriented Programming
  (1007, 1003), -- Mobile App Development requires Web Development Fundamentals
  (1008, 1005), -- Computer Networks requires Data Structures and Algorithms
  (1009, 1005), -- Operating Systems requires Data Structures and Algorithms
  (1010, 1009) -- Cybersecurity Fundamentals requires Operating Systems
;

-- Dummy data untuk tabel lecturer_courses
INSERT INTO
  lecturer_courses (staff_id, course_code)
VALUES
  (1, 1001), -- Lecturer with staff_id 1 teaches Introduction to Programming
  (2, 1002), -- Lecturer with staff_id 2 teaches Database Management Systems
  (2, 1005), -- Lecturer with staff_id 2 teaches Data Structures and Algorithms
  (3, 1002), -- Lecturer with staff_id 3 teaches Database Management Systems
  (3, 1003), -- Lecturer with staff_id 3 teaches Web Development Fundamentals
  (4, 1004), -- Lecturer with staff_id 4 teaches Object-Oriented Programming
  (5, 1005), -- Lecturer with staff_id 5 teaches Data Structures and Algorithms
  (6, 1006), -- Lecturer with staff_id 6 teaches Software Engineering Principles
  (7, 1007), -- Lecturer with staff_id 7 teaches Mobile App Development
  (8, 1008), -- Lecturer with staff_id 8 teaches Computer Networks
  (9, 1009), -- Lecturer with staff_id 9 teaches Operating Systems
  (9, 1010), -- Lecturer with staff_id 9 teaches Cybersecurity Fundamentals
  (10, 1010) -- Lecturer with staff_id 10 teaches Cybersecurity Fundamentals
;

-- Dummy data untuk tabel student_courses
INSERT INTO
  student_courses (student_id, course_code, year_taken, semester_taken, grade_awarded)
VALUES
  (1, 1001, '2010-09-01', 1, 'A'),
  (1, 1005, '2010-09-01', 1, 'A-'),
  (1, 1002, '2011-09-01', 1, 'B+'),
  (2, 1001, '2010-09-01', 1, 'B+'),
  (2, 1005, '2010-09-01', 1, 'C+'),
  (2, 1002, '2011-09-01', 1, 'A'),
  (3, 1001, '2010-09-01', 1, 'B-'),
  (3, 1002, '2011-09-01', 1, 'A-'),
  (4, 1005, '2010-09-01', 1, 'B'),
  (4, 1002, '2011-09-01', 1, 'A'),
  (5, 1001, '2010-09-01', 1, 'B-'),
  (5, 1005, '2010-09-01', 1, 'A-'),
  (5, 1002, '2011-09-01', 1, 'C'),
  (6, 1001, '2010-09-01', 1, 'E'),
  (6, 1005, '2010-09-01', 1, 'A'),
  (6, 1002, '2011-09-01', 1, 'B'),
  (7, 1001, '2010-09-01', 1, 'B+'),
  (7, 1005, '2010-09-01', 1, 'A'),
  (7, 1002, '2011-09-01', 1, 'A-'),
  (8, 1001, '2010-09-01', 1, 'A'),
  (8, 1005, '2010-09-01', 1, 'A'),
  (8, 1002, '2011-09-01', 1, 'B+'),
  (9, 1001, '2010-09-01', 1, 'A'),
  (9, 1005, '2010-09-01', 1, 'B'),
  (9, 1002, '2011-09-01', 1, 'A'),
  (10, 1001, '2010-09-01', 1, 'A'),
  (10, 1005, '2010-09-01', 1, 'A'),
  (10, 1002, '2011-09-01', 1, 'A-');

-- Dummy data untuk tabel committees
INSERT INTO
  committees (id, faculty_id, title, meeting_frequency)
VALUES
  (1, 1, 'Curriculum Development', 2), -- Committee for Curriculum Development
  (2, 1, 'Student Affairs', 1), -- Committee for Student Affairs
  (3, 1, 'Research Committee', 3), -- Committee for Research
  (4, 1, 'Admissions Committee', 2), -- Committee for Admissions
  (5, 1, 'Ethics Board', 1) -- Committee for Ethics
;

-- Dummy data untuk tabel committee_lecturers
INSERT INTO
  committee_lecturers (staff_id, committee_id, faculty_id)
VALUES
  (1, 1, 1),
  (2, 1, 1),
  (3, 2, 1),
  (4, 1, 1),
  (5, 2, 1),
  (6, 3, 1),
  (7, 4, 1),
  (8, 5, 1);

-- Dummy data untuk tabel clubs
INSERT INTO
  clubs (id, campus_id, name, building, phone_number)
VALUES
  (1, 1, 'Alpha Club', 'Main Building', '+1234567890'),
  (2, 2, 'Neo Club', 'Student Center', '+1987654321'),
  (3, 3, 'Zen Club', 'Cintrix Building', '+1112233445');

-- Dummy data untuk tabel sports
INSERT INTO
  sports (id, club_id, name)
VALUES
  (1, 1, 'Football'),
  (2, 1, 'Basketball'),
  (3, 2, 'Tennis'),
  (4, 2, 'Volleyball'),
  (5, 3, 'Swimming'),
  (6, 3, 'Athletics'),
  (7, 3, 'Soccer'),
  (8, 2, 'Badminton'),
  (9, 2, 'Gymnastics'),
  (10, 1, 'Table Tennis'),
  (11, 2, 'Rugby'),
  (12, 1, 'Hockey');
