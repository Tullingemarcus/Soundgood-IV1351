INSERT INTO instructor (name, personal_number, address)
VALUES
  ('Mia Downs', '196607111108', '9259 Diam. Road'),
  ('Colton Lopez', '196607111108', '256-5054 Nunc Road'),
  ('Signe Wall', '195209273027', '760-2525 Volutpat Ave'),
  ('Hayden Lee', '199304051163', 'P.O. Box 386, 2298 Nullam St.'),
  ('Clementine Hancock', '199707097213', 'Ap #196-8486 Elit St.'),
  ('Charde Holden', '198907154523', '145-1450 Pellentesque, Rd.'),
  ('Dora Arnold', '193202218289', '433-792 Tellus Rd.'),
  ('Macon Ewing', '197207212064', 'Ap #653-7780 Tristique St.'),
  ('Colleen Bolton', '193604237176', '274-8801 Per Avenue'),
  ('Zelda Hebert', '197104032375', 'Ap #742-843 Nunc St.');

INSERT INTO instructor_instrument (instructor_id, brand, type)
VALUES
  (3, 'Gibson', 'guitar'),
  (5, 'Gretsch', 'guitar'),
  (1, 'Gretsch', 'guitar'),
  (9, 'Yamaha', 'drums'),
  (10, 'Yamaha', 'synthesizer'),
  (6, 'Yamaha', 'saxophone'),
  (2, 'Sequential', 'synthesizer'),
  (7, 'Kamaka', 'ukulele'),
  (4, 'Ludwig', 'drums'),
  (8, 'Gibson', 'guitar');

INSERT INTO staff_email (email_address)
VALUES
  ('dolor.donec@yahoo.org'),
  ('lobortis@icloud.couk'),
  ('ipsum.donec@hotmail.com'),
  ('sem.semper@aol.couk'),
  ('diam.sed@protonmail.net'),
  ('turpis.egestas.aliquam@icloud.edu'),
  ('elementum@outlook.net'),
  ('amet.lorem@protonmail.ca'),
  ('ad.litora@google.net'),
  ('congue@hotmail.org');

INSERT INTO staff_phone (phone_number)
VALUES
  ('0770778787'),
  ('0736766010'),
  ('0702485368'),
  ('0771586000'),
  ('0736824836'),
  ('0101303000'),
  ('0706681780'),
  ('0736311424'),
  ('0771224488'),
  ('0702990097');

INSERT INTO staff_contact_information (instructor_id, staff_email_id, staff_phone_id)
VALUES
  (2, 2, 1),
  (5, 6, 2),
  (3, 8, 3),
  (9, 1, 4),
  (7, 3, 5),
  (8, 7, 6),
  (10, 5, 7),
  (6, 4, 8),
  (1, 9, 9),
  (4, 10, 10);


INSERT INTO student (name, personal_number, address)
VALUES
  ('Ifeoma Sherman', '200407126366', 'P.O. Box 776, 7486 Ullamcorper. St.'),
  ('Ignacia Solomon', '201107126367', 'Ap #174-9931 Dui Rd.'),
  ('Rana Rollins', '201507126363', 'Ap #682-2508 Nunc Ave'),
  ('Kirby Nunez', '201501147787', '108-1619 Nec, Avenue'),
  ('Martin Landry', '200902161025', '4484 Malesuada Road'),
  ('Cairo Hewitt', '200906300587', 'Ap #354-6134 Proin Rd.'),
  ('Timothy Burks', '201209231198', '396-7631 Rhoncus. St.'),
  ('Melodie Vega', '200706127545', 'Ap #246-5165 Elementum, St.'),
  ('Illiana Carlson', '200802213579', 'Ap #292-4538 Et Av.'),
  ('Owen Figueroa', '201302183999', 'P.O. Box 216, 7807 Ligula. Ave');

INSERT INTO student_instrument (student_id, brand, type)
VALUES
  (1, 'Gibson', 'guitar'),
  (2, 'Fender', 'guitar'),
  (3, 'Taylor', 'guitar'),
  (4, 'Yamaha', 'drums'),
  (5, 'Yamaha', 'drums'),
  (6, 'Yamaha', 'saxophone'),
  (7, 'Sequential', 'synthesizer'),
  (8, 'Kamaka', 'ukulele'),
  (9, 'Ludwig', 'drums'),
  (10, 'Gibson', 'guitar');

INSERT INTO student_email (email_address)
VALUES
  ('eu.elit@outlook.org'),
  ('eleifend.vitae.erat@outlook.couk'),
  ('vitae@protonmail.org'),
  ('eu.sem@yahoo.couk'),
  ('lorem.ipsum@icloud.ca'),
  ('tempus.eu.ligula@outlook.couk'),
  ('nonummy@protonmail.net'),
  ('eros.proin.ultrices@yahoo.edu'),
  ('in.lorem@yahoo.com'),
  ('dictum.phasellus@outlook.ca');

INSERT INTO student_phone_number (phone_number)
VALUES
  ('0771560000'),
  ('0708147243'),
  ('0771224488'),
  ('0703023146'),
  ('0723167370'),
  ('0735355639'),
  ('0722999602'),
  ('0702296560'),
  ('0708193312'),
  ('0707614484');

INSERT INTO student_contact_information (student_id, student_email_id, student_phone_id)
VALUES
  (2, 2, 1),
  (5, 6, 2),
  (3, 8, 3),
  (9, 1, 4),
  (7, 3, 5),
  (8, 7, 6),
  (10, 5, 7),
  (6, 4, 8),
  (1, 9, 9),
  (4, 10, 10);

INSERT INTO contact_person (name, address, student_id)
VALUES
  ('Xavier Sutton', '979-9624 Et Av.', 1),
  ('Raya Nolan', '391 Ante St.', 2),
  ('Angelica Lamb', 'Ap #895-222 Amet Road', 3),
  ('Rooney Underwood', 'P.O. Box 639, 4327 Sit St.', 4),
  ('Mannix Marks', 'Ap #139-2290 Magna. Street', 5),
  ('Castor Knight', 'Ap #348-567 Velit St.', 6),
  ('Kylee Cameron', '335-5389 Nibh. St.', 7),
  ('Perry Sears', 'Ap #839-3806 Suspendisse Ave', 8),
  ('McKenzie Weeks', 'Ap #988-5317 Fusce Rd.', 9),
  ('Jarrod Lee', '127-9039 Donec Road', 10);

INSERT INTO contact_person_email (contact_person_email)
VALUES
  ('mollis.nec.cursus@aol.com'),
  ('arcu.vestibulum@protonmail.net'),
  ('ultrices.mauris.ipsum@icloud.org'),
  ('dapibus.ligula.aliquam@outlook.couk'),
  ('imperdiet.erat@protonmail.org'),
  ('posuere.cubilia@yahoo.net'),
  ('id@google.couk'),
  ('ac.orci.ut@aol.org'),
  ('orci.ut.semper@outlook.couk'),
  ('auctor.velit.eget@aol.com');

INSERT INTO contact_person_phone (phone_number)
VALUES
  ('0771560000'),
  ('0771369369'),
  ('0708193312'),
  ('0707507097'),
  ('0771369369'),
  ('0771224488'),
  ('0771450450'),
  ('0760161494'),
  ('0771365365'),
  ('0771365365');

INSERT INTO contact_person_information (contact_person_id, contact_person_email_id, contact_person_phone_id)
VALUES
  (2, 2, 1),
  (5, 6, 2),
  (3, 8, 3),
  (9, 1, 4),
  (7, 3, 5),
  (8, 7, 6),
  (10, 5, 7),
  (6, 4, 8),
  (1, 9, 9),
  (4, 10, 10);

INSERT INTO lesson (instructor_id, student_id)
VALUES
  (7, 5),
  (7, 8),
  (3, 2),
  (9, 10),
  (4, 5),
  (6, 8),
  (6, 6),
  (7, 7),
  (8, 1),
  (1, 5);

INSERT INTO individual_lesson (lesson_id, time,address,date)
VALUES
  (3, '17:14:27','463-1839 Tellus. Rd.','Apr 9, 2022'),
  (4, '23:40:51','1005 Lorem Road','Feb 12, 2022'),
  (5, '10:36:08','Ap #976-6791 Erat Ave','Jun 17, 2023'),
  (9, '3:29:57','Ap #963-3235 Adipiscing Ave','Mar 13, 2023'),
  (10, '4:50:14','821-5300 Tellus. Street','Mar 27, 2022');

INSERT INTO group_lesson (lesson_id, time,address,date)
VALUES
  (1, '8:28:11','604-5587 Mi, Av.','Aug 27, 2022'),
  (2, '8:28:11','604-5587 Mi, Av.','Aug 27, 2022'),
  (6, '4:04:24','Ap #507-1445 Pede Street','Jan 27, 2022'),
  (7, '4:04:24','Ap #507-1445 Pede Street','Jan 27, 2022'),
  (8, '8:28:11','604-5587 Mi, Av.','Aug 27, 2022');