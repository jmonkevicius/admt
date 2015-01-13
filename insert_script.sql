insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (1, 'Europe', 'Italy', 'South Tyrol', 'Bolzano', '39100', 'piazza Università', '1');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (2,'North America', 'USA', 'California', 'San Francisco', 'CA 94043', 'Amphitheatre Parkway Mountain View', '1600');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (3, 'Europe', 'Lithuania', 'Vilniaus sav.', 'Vilnius', 'LT-71852', 'Savanoriu pr.', '268');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (4, 'Asia', 'China', 'Beijin man.', 'Beijin', 'CH-17171', 'Kampei str.', '154');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (5, 'Europe', 'Italy', 'South Tyrol', 'Bolzano', '39100', 'vialle Drusso', '299B');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (6, 'Europe', 'Italy', 'Veneto', 'Venice', '39300', 'Venice str.', '131');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (7,'Europe','Italy','South Tyrol','Bolzano','39100','Masseratti str','13');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (8, 'Europe', 'Germany', 'Bavaria', 'Munich', 'DE-123451', 'Deutschalnd str', '71');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (9, 'Asia', 'Taiwan', 'Taiwan man.', 'Hanoy', 'TW-123123', 'Cheese str', '7');
insert into jre_location (locationid, continent, country, province, city, zipcode, street, housenumber) values (10,'Europe','Italy','South Tyrol','Bolzano','39100','vialle Cartmnio','91C');
--
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('1', 'Free University of Bozen', 'Computer Science', 'Computer Science and Engineering', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('2', 'Free University of Bozen', 'Computer Science', 'Computer Science', '', '', 'Master', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreeType, locationid) values ('3', 'Free University of Bozen', 'Computer Science', 'Computational Logic', '', '', 'Master', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studyType, degreetype, locationid) values ('4', 'Free University of Bozen', 'Economics and Management', 'Economics and Management', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('5', 'Free University of Bozen', 'Economics and Management', 'Tourism, sport and event management', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('6', 'Free University of Bozen', 'Economics and Management', 'Economics and Social Sciences', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('7', 'Free University of Bozen', 'Design and Art', 'Bachelor in Design and Art', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('8', 'Free University of Bozen', 'Education', 'Social Work', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('9', 'Free University of Bozen', 'Education', ' Communication Sciences and Culture', '', '', 'Bachelor', '1');
insert into jre_studyprogram (studyprogramid, university, faculty, studyprogram, curriculum, studytype, degreetype, locationid) values ('10', 'Free University of Bozen', 'Science and Technology', 'Agricultural and Agro-Environmental Sciences', '', '', 'Bachelor', '1');
--
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (1, 12345678, 'Evija', 'Urtane', 'eurtane@unibz.it', 'regular', to_date('1990-12-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'F', 'Latvian', 'Latvian', 'Riga 1 state gymnasium', 'Gymnasium', '3','2');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (2, 12233435, 'Rokas', 'Maciulaitis', 'rmaciulaitis@unibz.it', 'regular', to_date('1993-08-20 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'M', 'Lithuanian', 'Lithuanian', 'Vytautas Magnus Gymnasium', 'Gymnasium', '1', '1');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (3, 12324355, 'Jonas', 'Monkevicius', 'jmonkevicius@unibz.it', 'regular', to_date('1987-08-10 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'M', 'Lithuanian', 'Lithuanian', 'Vievis Gymnasium', 'Gymnasium', '2', '2');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (4, 23243256, 'Jane', 'Thomsom', 'jthomson@unibz.it', 'regular', to_date('1992-12-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'F', 'Estonian', 'Estonian', 'Talin 1 Gymnasium', 'Gymnasium', '2', '4');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (5, 43543224, 'Mike', 'Brayan', 'mbrayan@unibz.it', 'regular', to_date('1989-02-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'F', 'German', 'German', 'Berlin 1 Gymnasium', 'Gymnasium', '4', '5');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (6, 32543543, 'Luca', 'Lucani', 'llucani@unibz.it', 'regular', to_date('1994-12-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'M', 'Italian', 'Italian', 'Milano 1 Gymnasium', 'Gymnasium', '7', '6');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (7, 35436575, 'Artur', 'Urtan', 'aurtan@unibz.it', 'regular', to_date('1987-02-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'M', 'Russian', 'Russian', 'Moscow 1 Gymnasium', 'Gymnasium', '8', '7');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (8, 45346547, 'Tom', 'Toman', 'ttoman@unibz.it', 'regular', to_date('1995-12-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'F', 'Italian', 'Italian', 'Rome 1 Gymnasium', 'Gymnasium', '7', '8');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (9, 45465436, 'John', 'Kompe', 'jkompe@unibz.it', 'regular', to_date('1985-12-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'M', 'German', 'German', 'Munich 1 Gymnasium', 'Gymnasium', '1', '9');
insert into jre_student (studentid, studentcardid, name, surname, email, studenttype, birthdate, gender, nationality, nativelanguage, highschool, highschooltype, homelocationid, studyprogramid) values (10, 43654364,'Michael', 'Balote', 'mbalote@unibz.it', 'regular', to_date('1994-12-11 18:15:44', 'YYYY-MM-DD HH24:MI:SS'), 'F', 'Columbian', 'Spanish', 'Columbia 1 Gymnasium', 'Gymnasium', '', '10');
--
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (1, 7, 'University of Bolzano', 'summer internship', 'Tadeusz', 'Bzezincikievic', 'Karl', 'Plurs', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (2, 8, 'Kolping mining inc', 'regular internship', 'Greg', 'Blas', 'Jakub', 'Verreno', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (3, 9, 'Wine inc', 'regular internship', 'Karl', 'Malone', 'Lebron', 'James', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (4, 10, 'Military police', 'summer internship', 'Tadeusz', 'Bzezincikievic', 'Christiano', 'Ronaldo', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (5, 8, 'Kobe waters', 'regular internship', 'Tom', 'Limpsky', 'Valerie', 'Ciaggnete', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (6, 9, 'Taxi company', 'summer internship', 'Daniel', 'Garcia', 'Fernando', 'Alonso', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (7, 10, 'Kolibris', 'summer internship', 'Gin', 'Karlos', 'Valdo', 'Pumito', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (8, 7, 'Drebsco', 'regular internship', 'Kurt', 'Kobain', 'Dikembe', 'Mutombo', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (9, 9, 'University of Bolzano', 'regular internship', 'Tadeusz', 'Bzezincikievic', 'Gino', 'Purlo', 1);
insert into jre_internship (internship_id, grade, company, internship_type, supervisor_in_uni_name, supervisor_in_uni_surname, supervisor_in_org_name, supervisor_in_org_surname, location_id) values (10, 10, 'University of Bolzano', 'regular internship', 'Tadeusz', 'Bzezincikievic', 'Gino', 'Purlo', 1);
--
insert into jre_event (event_id, event_type, event_description, event_state) values (1, 'enrolled', 'Event when student enrolls', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (2, 'enrolled', 'Event when student enrolls', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (3, 'graduated', 'Event when student graduates', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (4, 'graduated', 'Event when student graduates', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (5, 'knows_language', 'Knows language in level', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (6, 'knows_language', 'Knows language in level', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (7, 'started_internship', 'Started internship in company', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (8, 'started_internship', 'Started internship in company', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (9, 'started_studies', 'Started studies in university', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (10, 'started_studies', 'Started studies in university', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (11, 'paused_studies', 'Paused studies in university', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (12, 'paused_studies', 'Paused studies in university', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (13, 'continued_studies', 'Continued studies in university', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (14, 'continued_studies', 'Continued studies in university', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (15, 'stoped_studies', 'Stoped studies in university', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (16, 'stoped_studies', 'Stoped studies in university', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (17, 'studying', 'Studying in university', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (18, 'studying', 'Studying in university', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (19, 'studying_in_ita_lan', 'Studying in italian language', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (20, 'studying_in_ita_lan', 'Studying in italian language', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (21, 'studying_in_ger_lan', 'Studying in german language', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (22, 'studying_in_ger_lan', 'Studying in german language', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (23, 'studying_in_eng_lan', 'Studying in english language', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (24, 'studying_in_eng_lan', 'Studying in english language', '1');
insert into jre_event (event_id, event_type, event_description, event_state) values (25, 'completed_internship', 'Completed internship in internship location and get a grade', '0');
insert into jre_event (event_id, event_type, event_description, event_state) values (26, 'completed_internship', 'Completed internship in internship location and get a grade', '1');
--
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (1, 'ENG', 'A1', 'English', 'Can understand and use familiar everyday expressions and very basic phrases aimed at the satisfaction of needs of a concrete type. Can introduce him/herself and others and can ask and answer questions about personal details such as where he/she lives, people he/she knows and things he/she has. Can interact in a simple way provided the other person talks slowly and clearly and is prepared to help.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (2, 'ENG', 'A2', 'English', 'Can understand sentences and frequently used expressions related to areas of most immediate relevance (e.g. very basic personal and family information, shopping, local geography, employment). Can communicate in simple and routine tasks requiring a simple and direct exchange of information on familiar and routine matters. Can describe in simple terms aspects of his/her background, immediate environment and matters in areas of immediate need.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (3, 'ENG', 'B1', 'English', 'Can understand the main points of clear standard input on familiar matters regularly encountered in work, school, leisure, etc. Can deal with most situations likely to arise whilst travelling in an area where the language is spoken. Can produce simple connected text on topics which are familiar or of personal interest. Can describe experiences and events, dreams, hopes and ambitions and briefly give reasons and explanations for opinions and plans.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (4, 'ENG', 'B2', 'English', 'Can understand the main ideas of complex text on both concrete and abstract topics, including technical discussions in his/her field of specialisation. Can interact with a degree of fluency and spontaneity that makes regular interaction with native speakers quite possible without strain for either party. Can produce clear, detailed text on a wide range of subjects and explain a viewpoint on a topical issue giving the advantages and disadvantages of various options.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (5, 'ENG', 'C1', 'English', 'Can understand a wide range of demanding, longer texts, and recognise implicit meaning. Can express him/herself fluently and spontaneously without much obvious searching for expressions. Can use language flexibly and effectively for social, academic and professional purposes. Can produce clear, well-structured, detailed text on complex subjects, showing controlled use of organisational patterns, connectors and cohesive devices.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (6, 'ENG', 'C2', 'English', 'Can understand with ease virtually everything heard or read. Can summarise information from different spoken and written sources, reconstructing arguments and accounts in a coherent presentation. Can express him/herself spontaneously, very fluently and precisely, differentiating finer shades of meaning even in the most complex situations.');
--
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (7, 'GER', 'A1', 'German', 'Can understand and use familiar everyday expressions and very basic phrases aimed at the satisfaction of needs of a concrete type. Can introduce him/herself and others and can ask and answer questions about personal details such as where he/she lives, people he/she knows and things he/she has. Can interact in a simple way provided the other person talks slowly and clearly and is prepared to help.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (8, 'GER', 'A2', 'German', 'Can understand sentences and frequently used expressions related to areas of most immediate relevance (e.g. very basic personal and family information, shopping, local geography, employment). Can communicate in simple and routine tasks requiring a simple and direct exchange of information on familiar and routine matters. Can describe in simple terms aspects of his/her background, immediate environment and matters in areas of immediate need.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (9, 'GER', 'B1', 'German', 'Can understand the main points of clear standard input on familiar matters regularly encountered in work, school, leisure, etc. Can deal with most situations likely to arise whilst travelling in an area where the language is spoken. Can produce simple connected text on topics which are familiar or of personal interest. Can describe experiences and events, dreams, hopes and ambitions and briefly give reasons and explanations for opinions and plans.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (10, 'GER', 'B2', 'German', 'Can understand the main ideas of complex text on both concrete and abstract topics, including technical discussions in his/her field of specialisation. Can interact with a degree of fluency and spontaneity that makes regular interaction with native speakers quite possible without strain for either party. Can produce clear, detailed text on a wide range of subjects and explain a viewpoint on a topical issue giving the advantages and disadvantages of various options.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (11, 'GER', 'C1', 'German', 'Can understand a wide range of demanding, longer texts, and recognise implicit meaning. Can express him/herself fluently and spontaneously without much obvious searching for expressions. Can use language flexibly and effectively for social, academic and professional purposes. Can produce clear, well-structured, detailed text on complex subjects, showing controlled use of organisational patterns, connectors and cohesive devices.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (12, 'GER', 'C2', 'German', 'Can understand with ease virtually everything heard or read. Can summarise information from different spoken and written sources, reconstructing arguments and accounts in a coherent presentation. Can express him/herself spontaneously, very fluently and precisely, differentiating finer shades of meaning even in the most complex situations.');
--
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (13, 'ITA', 'A1', 'Italian', 'Can understand and use familiar everyday expressions and very basic phrases aimed at the satisfaction of needs of a concrete type. Can introduce him/herself and others and can ask and answer questions about personal details such as where he/she lives, people he/she knows and things he/she has. Can interact in a simple way provided the other person talks slowly and clearly and is prepared to help.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (14, 'ITA', 'A2', 'Italian', 'Can understand sentences and frequently used expressions related to areas of most immediate relevance (e.g. very basic personal and family information, shopping, local geography, employment). Can communicate in simple and routine tasks requiring a simple and direct exchange of information on familiar and routine matters. Can describe in simple terms aspects of his/her background, immediate environment and matters in areas of immediate need.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (15, 'ITA', 'B1', 'Italian', 'Can understand the main points of clear standard input on familiar matters regularly encountered in work, school, leisure, etc. Can deal with most situations likely to arise whilst travelling in an area where the language is spoken. Can produce simple connected text on topics which are familiar or of personal interest. Can describe experiences and events, dreams, hopes and ambitions and briefly give reasons and explanations for opinions and plans.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (16, 'ITA', 'B2', 'Italian', 'Can understand the main ideas of complex text on both concrete and abstract topics, including technical discussions in his/her field of specialisation. Can interact with a degree of fluency and spontaneity that makes regular interaction with native speakers quite possible without strain for either party. Can produce clear, detailed text on a wide range of subjects and explain a viewpoint on a topical issue giving the advantages and disadvantages of various options.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (17, 'ITA', 'C1', 'Italian', 'Can understand a wide range of demanding, longer texts, and recognise implicit meaning. Can express him/herself fluently and spontaneously without much obvious searching for expressions. Can use language flexibly and effectively for social, academic and professional purposes. Can produce clear, well-structured, detailed text on complex subjects, showing controlled use of organisational patterns, connectors and cohesive devices.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (18, 'ITA', 'C2', 'Italian', 'Can understand with ease virtually everything heard or read. Can summarise information from different spoken and written sources, reconstructing arguments and accounts in a coherent presentation. Can express him/herself spontaneously, very fluently and precisely, differentiating finer shades of meaning even in the most complex situations.');
--
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (19, 'RUS', 'A1', 'Russian', 'Can understand and use familiar everyday expressions and very basic phrases aimed at the satisfaction of needs of a concrete type. Can introduce him/herself and others and can ask and answer questions about personal details such as where he/she lives, people he/she knows and things he/she has. Can interact in a simple way provided the other person talks slowly and clearly and is prepared to help.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (20, 'RUS', 'A2', 'Russian', 'Can understand sentences and frequently used expressions related to areas of most immediate relevance (e.g. very basic personal and family information, shopping, local geography, employment). Can communicate in simple and routine tasks requiring a simple and direct exchange of information on familiar and routine matters. Can describe in simple terms aspects of his/her background, immediate environment and matters in areas of immediate need.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (21, 'RUS', 'B1', 'Russian', 'Can understand the main points of clear standard input on familiar matters regularly encountered in work, school, leisure, etc. Can deal with most situations likely to arise whilst travelling in an area where the language is spoken. Can produce simple connected text on topics which are familiar or of personal interest. Can describe experiences and events, dreams, hopes and ambitions and briefly give reasons and explanations for opinions and plans.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (22, 'RUS', 'B2', 'Russian', 'Can understand the main ideas of complex text on both concrete and abstract topics, including technical discussions in his/her field of specialisation. Can interact with a degree of fluency and spontaneity that makes regular interaction with native speakers quite possible without strain for either party. Can produce clear, detailed text on a wide range of subjects and explain a viewpoint on a topical issue giving the advantages and disadvantages of various options.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (23, 'RUS', 'C1', 'Russian', 'Can understand a wide range of demanding, longer texts, and recognise implicit meaning. Can express him/herself fluently and spontaneously without much obvious searching for expressions. Can use language flexibly and effectively for social, academic and professional purposes. Can produce clear, well-structured, detailed text on complex subjects, showing controlled use of organisational patterns, connectors and cohesive devices.');
insert into jre_languages_and_levels (language_id, language_code, language_level, language_name, language_description) values (24, 'RUS', 'C2', 'Russian', 'Can understand with ease virtually everything heard or read. Can summarise information from different spoken and written sources, reconstructing arguments and accounts in a coherent presentation. Can express him/herself spontaneously, very fluently and precisely, differentiating finer shades of meaning even in the most complex situations.');
--
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (1, to_date('2015/01/28 10:30:00', 'yyyy/mm/dd hh24:mi:ss'), 'January', 2015, 'Winter', '2014-2015', 5, 28, 28, 'Wednesday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (2, to_date('2015/02/12 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), 'February', 2015, 'Winter', '2014-2015', 8, 43, 12, 'Thursday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (3, to_date('2015/02/13 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'February', 2015, 'Winter', '2014-2015', 8, 44, 13, 'Wednesday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (4, to_date('2015/02/05 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'February', 2015, 'Winter', '2014-2015', 6, 36, 5, 'Thursday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (5, to_date('2015/01/26 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), 'January', 2015, 'Winter', '2014-2015', 5, 26, 26, 'Monday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (6, to_date('2015/01/26 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), 'January', 2015, 'Winter', '2014-2015', 5, 26, 26, 'Monday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (7, to_date('2015/01/28 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'January', 2015, 'Winter', '2014-2015', 5, 28, 28, 'Wednesday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (8, to_date('2015/02/02 10:30:00', 'yyyy/mm/dd hh24:mi:ss'), 'February', 2015, 'Winter', '2014-2015', 6, 33, 2, 'Monday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (9, to_date('2015/02/09 11:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'February', 2015, 'Winter', '2014-2015', 7, 40, 9, 'Monday');
insert into jre_exactdate (dateid, exactdate, month, year, semester, academicyear, weekofyear, dayofyear, dayofmonth, dayofweek) values (10, to_date('2015/01/28 10:30:00', 'yyyy/mm/dd hh24:mi:ss'), 'January', 2015, 'Winter', '2014-2015', 5, 28, 28, 'Wednesday');
--
commit;
exit;
