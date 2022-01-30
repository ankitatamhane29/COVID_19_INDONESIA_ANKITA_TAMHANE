
-- Use the `ref` function to select from other models

select to_date(date) as date, total_recovered,total_deaths, total_active_cases, total_cases
from {{ ref('covid_data_country') }}

