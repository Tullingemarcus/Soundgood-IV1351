DELETE FROM sibling;


DELETE FROM student_email;
DELETE FROM student_phone_number;
DELETE FROM student_contact_information;
ALTER SEQUENCE student_phone_number_student_phone_id_seq RESTART WITH 1;
ALTER SEQUENCE student_email_student_email_id_seq RESTART WITH 1;

DELETE FROM contact_person_email;
DELETE FROM contact_person_phone;
DELETE FROM contact_person_information;
DELETE FROM contact_person;
ALTER SEQUENCE contact_person_phone_contact_person_phone_id_seq RESTART WITH 1;
ALTER SEQUENCE contact_person_email_contact_person_email_id_seq RESTART WITH 1;
ALTER SEQUENCE contact_person_contact_person_id_seq RESTART WITH 1;

DELETE FROM instrument_rental;
DELETE FROM student_instrument;
ALTER SEQUENCE student_instrument_instrument_id_seq RESTART WITH 1;

DELETE FROM staff_email;
DELETE FROM staff_phone;
DELETE FROM staff_contact_information;
ALTER SEQUENCE staff_email_staff_email_id_seq RESTART WITH 1;
ALTER SEQUENCE staff_phone_staff_phone_id_seq RESTART WITH 1;

DELETE FROM instructor_instrument;

DELETE FROM lesson_prices;
DELETE FROM price;
ALTER SEQUENCE price_price_id_seq RESTART WITH 1;

DELETE FROM individual_lesson;
DELETE FROM lesson;
ALTER SEQUENCE lesson_lesson_id_seq RESTART WITH 1;

DELETE FROM multiple_student_lesson;
DELETE FROM ensemble;
DELETE FROM group_lesson;
ALTER SEQUENCE group_lesson_group_lesson_id_seq RESTART WITH 1;
ALTER SEQUENCE ensemble_ensemble_id_seq RESTART WITH 1;

DELETE FROM instructor;
DELETE FROM student;
ALTER SEQUENCE student_student_id_seq RESTART WITH 1;
ALTER SEQUENCE instructor_instructor_id_seq RESTART WITH 1;
