-- Selecting the information for Country wise

with source_data as
(select to_date(date) as date,new_cases, new_deaths, new_recovered,new_active_cases,
total_recovered,total_deaths, total_active_cases, total_cases from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ANKITA_TAMHANE where location_level= 'Country')

select * from source_data