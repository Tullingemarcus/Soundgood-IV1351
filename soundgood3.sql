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
 brand VARCHAR(500),
 type VARCHAR(500),
 instructor_id INT NOT NULL
);


CREATE TABLE price (
 price_id SERIAL NOT NULL,
 price INT NOT NULL
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (price_id);


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
 Instrument_id SERIAL NOT NULL,
 student_id INT NOT NULL,
 brand VARCHAR(500) NOT NULL,
 type VARCHAR(500) NOT NULL
);

ALTER TABLE student_instrument ADD CONSTRAINT PK_student_instrument PRIMARY KEY (Instrument_id);


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


CREATE TABLE ensemble (
 ensemble_id SERIAL NOT NULL,
 time TIME(10),
 address VARCHAR(500),
 date DATE,
 genre VARCHAR(500),
 number_of_students INT,
 instructor_id SERIAL NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (ensemble_id);


CREATE TABLE group_lesson (
 group_lesson_id SERIAL NOT NULL,
 time TIME(10),
 address VARCHAR(500),
 date DATE,
 number_of_students INT,
 instructor_id SERIAL NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id);


CREATE TABLE instrument_rental (
 date DATE,
 price INT,
 Instrument_id INT NOT NULL
);


CREATE TABLE lesson (
 lesson_id SERIAL NOT NULL,
 instructor_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE multiple_student_lesson (
 student_id INT NOT NULL,
 ensemble_id INT,
 group_lesson_id INT
);


CREATE TABLE sibling (
 sibling_student_id INT NOT NULL,
 name VARCHAR(500) NOT NULL,
 personal_number VARCHAR(12) NOT NULL,
 student_id INT
);


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


CREATE TABLE individual_lesson (
 lesson_id INT NOT NULL,
 time TIME(10),
 address VARCHAR(500),
 date DATE
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (lesson_id);


CREATE TABLE lesson_prices (
 price_id INT NOT NULL,
 ensemble_id INT,
 group_lesson_id INT,
 lesson_id INT
);


ALTER TABLE instructor_instrument ADD CONSTRAINT FK_instructor_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE student_instrument ADD CONSTRAINT FK_student_instrument_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE contact_person_information ADD CONSTRAINT FK_contact_person_information_0 FOREIGN KEY (contact_person_id) REFERENCES contact_person (contact_person_id);
ALTER TABLE contact_person_information ADD CONSTRAINT FK_contact_person_information_1 FOREIGN KEY (contact_person_email_id) REFERENCES contact_person_email (contact_person_email_id);
ALTER TABLE contact_person_information ADD CONSTRAINT FK_contact_person_information_2 FOREIGN KEY (contact_person_phone_id) REFERENCES contact_person_phone (contact_person_phone_id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_0 FOREIGN KEY (Instrument_id) REFERENCES student_instrument (Instrument_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE multiple_student_lesson ADD CONSTRAINT FK_multiple_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE multiple_student_lesson ADD CONSTRAINT FK_multiple_student_lesson_1 FOREIGN KEY (ensemble_id) REFERENCES ensemble (ensemble_id);
ALTER TABLE multiple_student_lesson ADD CONSTRAINT FK_multiple_student_lesson_2 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (group_lesson_id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE staff_contact_information ADD CONSTRAINT FK_staff_contact_information_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE staff_contact_information ADD CONSTRAINT FK_staff_contact_information_1 FOREIGN KEY (staff_phone_id) REFERENCES staff_phone (staff_phone_id);
ALTER TABLE staff_contact_information ADD CONSTRAINT FK_staff_contact_information_2 FOREIGN KEY (staff_email_id) REFERENCES staff_email (staff_email_id);


ALTER TABLE student_contact_information ADD CONSTRAINT FK_student_contact_information_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE student_contact_information ADD CONSTRAINT FK_student_contact_information_1 FOREIGN KEY (student_phone_id) REFERENCES student_phone_number (student_phone_id);
ALTER TABLE student_contact_information ADD CONSTRAINT FK_student_contact_information_2 FOREIGN KEY (student_email_id) REFERENCES student_email (student_email_id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE lesson_prices ADD CONSTRAINT FK_lesson_prices_0 FOREIGN KEY (price_id) REFERENCES price (price_id);
ALTER TABLE lesson_prices ADD CONSTRAINT FK_lesson_prices_1 FOREIGN KEY (ensemble_id) REFERENCES ensemble (ensemble_id);
ALTER TABLE lesson_prices ADD CONSTRAINT FK_lesson_prices_2 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (group_lesson_id);
ALTER TABLE lesson_prices ADD CONSTRAINT FK_lesson_prices_3 FOREIGN KEY (lesson_id) REFERENCES individual_lesson (lesson_id);


