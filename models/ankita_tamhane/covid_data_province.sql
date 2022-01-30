-- Selecting the information for Province wise

with source_data as
(select to_date(date) as date,location,province, new_cases, new_deaths, new_recovered,new_active_cases, population_density,area_km_2_,
total_recovered,total_deaths, growth_factor_of_new_cases, growth_factor_of_new_deaths, population from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ANKITA_TAMHANE where location_level= 'Province')

select * from source_data