set serveroutput on;
-- student action fact table
declare
  l_fact_id number;
  l_study_program_id number;  --10
  l_internship_id number; --10
  l_date_id number;  --10
  l_student_id number; --10
  l_language_id number; --24
  l_event_id number; --24
begin
  dbms_output.put_line('Filling student action table with 10000 random records.');
   
  for i in 1 .. 10000 loop
    l_fact_id := i;
    l_study_program_id := round(dbms_random.value(1,10),0);
    
    if i >= 900 then
      l_internship_id := round(dbms_random.value(1,10),0);
    else
      l_internship_id := null;
    end if;
    
    if i > 850 and i < 900
    then
      l_study_program_id := null;
      l_internship_id := null;
    else
      l_study_program_id := round(dbms_random.value(1,10),0);
      l_internship_id := round(dbms_random.value(1,10),0);
    end if;
    
    l_date_id := round(dbms_random.value(1,10),0);
    l_student_id := round(dbms_random.value(1,10),0);
    l_language_id := round(dbms_random.value(1,24),0);
    l_event_id := round(dbms_random.value(1,24),0);
    

    insert into admt.jre_student_action_fact values (
      l_fact_id,
      l_study_program_id,
      l_internship_id,
      l_date_id,
      l_student_id,
      l_language_id,
      l_event_id 
    );
    
  end loop;
  
  commit;
  dbms_output.put_line('Insert complete');
end;
/
exit;

