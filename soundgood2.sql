CREATE TABLE contact_person_email (
 contact_person_email_id SERIAL NOT NULL,
 contact_person_email VARCHAR(500)
);

ALTER TABLE contact_person_email ADD CONSTRAINT PK_contact_person_email PRIMARY KEY (contact_person_email_id);


CREATE TABLE contact_person_phone (
 contact_person_phone_id SERIAL NOT NULL,
 phone_number VARCHAR(20)
);

ALTER TABLE contact_person_phone ADD CONSTRAINT PK_contact_person_phone PRIMARY KEY (contact_person_phone_id);


CREATE TABLE instructor (
 instructor_id SERIAL NOT NULL,
 name VARCHAR(500) NOT NULL,
 personal_number VARCHAR(12) NOT NULL,
 address VARCHAR(500)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE instructor_instrument (
 instructor_id INT NOT NULL,
 brand VARCHAR(500),
 type VARCHAR(500)
);

ALTER TABLE instructor_instrument ADD CONSTRAINT PK_instructor_instrument PRIMARY KEY (instructor_id);


CREATE TABLE staff_email (
 staff_email_id SERIAL NOT NULL,
 email_address VARCHAR(500)
);

ALTER TABLE staff_email ADD CONSTRAINT PK_staff_email PRIMARY KEY (staff_email_id);


CREATE TABLE staff_phone (
 staff_phone_id SERIAL NOT NULL,
 phone_number VARCHAR(500)
);

ALTER TABLE staff_phone ADD CONSTRAINT PK_staff_phone PRIMARY KEY (staff_phone_id);


CREATE TABLE student (
 student_id SERIAL NOT NULL,
 name VARCHAR(500) NOT NULL,
 personal_number VARCHAR(12) NOT NULL,
 address VARCHAR(500),
 level VARCHAR(20)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE student_email (
 student_email_id SERIAL NOT NULL,
 email_address VARCHAR(500)
);

ALTER TABLE student_email ADD CONSTRAINT PK_student_email PRIMARY KEY (student_email_id);


CREATE TABLE student_instrument (
 student_id INT NOT NULL,
 brand VARCHAR(500) NOT NULL,
 type VARCHAR(500) NOT NULL
);

ALTER TABLE student_instrument ADD CONSTRAINT PK_student_instrument PRIMARY KEY (student_id);


CREATE TABLE student_phone_number (
 student_phone_id SERIAL NOT NULL,
 phone_number VARCHAR(20)
);

ALTER TABLE student_phone_number ADD CONSTRAINT PK_student_phone_number PRIMARY KEY (student_phone_id);


CREATE TABLE contact_person (
 contact_person_id SERIAL NOT NULL,
 name VARCHAR(500) NOT NULL,
 address VARCHAR(500),
 student_id INT NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (contact_person_id);


CREATE TABLE contact_person_information (
 contact_person_id INT NOT NULL,
 contact_person_email_id INT,
 contact_person_phone_id INT
);

ALTER TABLE contact_person_information ADD CONSTRAINT PK_contact_person_information PRIMARY KEY (contact_person_id);


CREATE TABLE instrument_rental (
 student_id INT NOT NULL,
 date DATE,
 price INT
);

ALTER TABLE instrument_rental ADD CONSTRAINT PK_instrument_rental PRIMARY KEY (student_id);


CREATE TABLE lesson (
 lesson_id SERIAL NOT NULL,
 instructor_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE prices (
 lesson_id INT NOT NULL,
 individual_price INT NOT NULL,
 group_price INT NOT NULL,
 ensemble_price INT NOT NULL
);

ALTER TABLE prices ADD CONSTRAINT PK_prices PRIMARY KEY (lesson_id);


CREATE TABLE sibling (
 sibling_student_id SERIAL NOT NULL,
 name VARCHAR(500) NOT NULL,
 personal_number VARCHAR(12) NOT NULL,
 student_id INT
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_student_id);


CREATE TABLE staff_contact_information (
 instructor_id INT NOT NULL,
 staff_phone_id INT,
 staff_email_id INT
);

ALTER TABLE staff_contact_information ADD CONSTRAINT PK_staff_contact_information PRIMARY KEY (instructor_id);


CREATE TABLE student_contact_information (
 student_id INT NOT NULL,
 student_phone_id INT,
 student_email_id INT
);

ALTER TABLE student_contact_information ADD CONSTRAINT PK_student_contact_information PRIMARY KEY (student_id);


CREATE TABLE ensemble (
 lesson_id INT NOT NULL,
 time TIME(10),
 address VARCHAR(500),
 date DATE,
 genre VARCHAR(500),
 number_of_students INT
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE group_lesson (
 lesson_id INT NOT NULL,
 time TIME(10),
 address VARCHAR(500),
 date DATE,
 number_of_students INT
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE individual_lesson (
 lesson_id INT NOT NULL,
 time TIME(10),
 address VARCHAR(500),
 date DATE
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (lesson_id);


ALTER TABLE instructor_instrument ADD CONSTRAINT FK_instructor_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE student_instrument ADD CONSTRAINT FK_student_instrument_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE contact_person_information ADD CONSTRAINT FK_contact_person_information_0 FOREIGN KEY (contact_person_id) REFERENCES contact_person (contact_person_id);
ALTER TABLE contact_person_information ADD CONSTRAINT FK_contact_person_information_1 FOREIGN KEY (contact_person_email_id) REFERENCES contact_person_email (contact_person_email_id);
ALTER TABLE contact_person_information ADD CONSTRAINT FK_contact_person_information_2 FOREIGN KEY (contact_person_phone_id) REFERENCES contact_person_phone (contact_person_phone_id);


ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_0 FOREIGN KEY (student_id) REFERENCES student_instrument (student_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE prices ADD CONSTRAINT FK_prices_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE staff_contact_information ADD CONSTRAINT FK_staff_contact_information_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE staff_contact_information ADD CONSTRAINT FK_staff_contact_information_1 FOREIGN KEY (staff_phone_id) REFERENCES staff_phone (staff_phone_id);
ALTER TABLE staff_contact_information ADD CONSTRAINT FK_staff_contact_information_2 FOREIGN KEY (staff_email_id) REFERENCES staff_email (staff_email_id);


ALTER TABLE student_contact_information ADD CONSTRAINT FK_student_contact_information_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE student_contact_information ADD CONSTRAINT FK_student_contact_information_1 FOREIGN KEY (student_phone_id) REFERENCES student_phone_number (student_phone_id);
ALTER TABLE student_contact_information ADD CONSTRAINT FK_student_contact_information_2 FOREIGN KEY (student_email_id) REFERENCES student_email (student_email_id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


