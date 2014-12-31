set serveroutput on;
--location table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_location';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_location
(
   locationid number PRIMARY KEY NOT NULL,
   continent varchar2(50) not null,
   country varchar2(50) not null,
   province varchar2(50),
   city varchar2(50),
   zipcode varchar2(50),
   street varchar2(100),
   housenumber varchar2(50)
);

--study program table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_studyprogram';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_studyprogram
(
   studyprogramid number PRIMARY KEY NOT NULL,
   university varchar2(100) not null,
   faculty varchar2(100) not null,
   studyprogram varchar2(100) not null,
   curriculum varchar2(100),
   studytype varchar2(10),
   degreetype varchar2(100),
   locationid number
);

-- event table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_event';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_event
(
   event_id number PRIMARY KEY NOT NULL,
   event_type varchar2(100) not null,
   event_description varchar2(2000),
   event_state number not null check(event_state in (0,1))
);

-- internship table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_internship';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_internship
(
   internship_id number PRIMARY KEY NOT NULL,
   grade number,
   company varchar2(200) not null,
   internship_type varchar2(50) not null,
   supervisor_in_uni_name varchar2(100) not null,
   supervisor_in_uni_surname varchar2(100) not null,
   supervisor_in_org_name varchar2(100) not null,
   supervisor_in_org_surname varchar2(100) not null,
   location_id number not null
);


-- languages and levels table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_languages_and_levels';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_languages_and_levels
(
   language_id number PRIMARY KEY NOT NULL,
   language_code varchar2(3) not null,
   language_level varchar2(20) not null,
   language_name varchar2(100) not null,
   language_description varchar2(2000)
);


-- exact date table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_exactdate';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_exactdate
(
   dateid number PRIMARY KEY NOT NULL,
   exactdate date not null,
   month varchar2(10) not null,
   year number not null,
   semester varchar2(10) not null,
   academicyear varchar2(10) not null,
   weekofyear number not null,
   dayofyear number not null,
   dayofmonth number not null,
   dayofweek varchar2(15)
);


-- student table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_student';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_student
(
   studentid number PRIMARY KEY NOT NULL,
   studentcardid varchar2(8) not null,
   name varchar2(100) not null,
   surname varchar2(100) not null,
   email varchar2(100),
   studenttype varchar2(100) not null,
   birthdate date not null,
   gender varchar2(6) not null,
   nationality varchar2(20) not null,
   nativelanguage varchar2(50) not null,
   highschool varchar2(100),
   highschooltype varchar2(50),
   homelocationid number,
   studyprogramid number not null   
);
--fact table

-- student action fact table
declare
   c int;
   l_table_name varchar2(100);
   l_drop_text varchar2(200);
begin
   l_table_name := 'jm1_student_action_fact';
   dbms_output.put_line('checking if table ' || l_table_name || ' exists.');
   select count(*) into c from user_tables where table_name = upper(l_table_name);
   if c = 1 then
      l_drop_text := 'drop table ' || l_table_name;
      execute immediate l_drop_text;
      dbms_output.put_line('old table dropped.');
   else dbms_output.put_line('Creating '|| l_table_name || ' table.');
   end if;
end;
/

CREATE TABLE admt.jm1_student_action_fact
(
   fact_id number PRIMARY KEY NOT NULL,
   study_program_id number,
   internship_id number,
   date_id number not null,
   student_id number not null,
   language_id number,
   event_id number not null
);
exit;
