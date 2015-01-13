select
  decode(grouping_id(e.event_type), 1, 'All languages', e.event_type) language,
  decode(grouping_id(sp.faculty), 1, 'All faculty', sp.faculty) faculty,
  count(saf.fact_id) students_count,
  grouping_id(e.event_type, sp.faculty) grouping_id
from
  admt.jre_studyprogram sp,
  admt.jre_event e,
  admt.jre_student_action_fact saf
where
  saf.study_program_id = sp.studyprogramid and
  saf.event_id = e.event_id and
  saf.event_id in (20,22,24)
group by cube (
  e.event_type, 
  sp.faculty)
order by 
  e.event_type, 
  sp.faculty;
exit;
