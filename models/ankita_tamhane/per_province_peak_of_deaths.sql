
select * from 
(select to_date(date) as date,province, total_deaths, population_density, rank()
over (partition by province order by total_deaths desc) AS  KEY
from INTERVIEW_DB.PLAYGROUND_ANKITA_TAMHANE.covid_data_province)
where KEY = 1