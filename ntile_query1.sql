select 
  lal.language_name, 
  lal.language_level, 
  count(language_level) as language_count, 
  ntile(4) over (order by count(language_level) ) 
from  
  admt.jre_languages_and_levels lal,
  admt.jre_exactdate ed,
  admt.jre_student_action_fact saf
where
  saf.language_id = lal.language_id and
  saf.date_id = ed.dateid and
  saf.event_id in (6) and
  ed.year = 2015 and 
  lal.language_level in ('A1', 'A2','B1', 'B2')
group by 
  ed.year, 
  lal.language_name, 
  lal.language_level
order by
  language_count desc;
exit;
