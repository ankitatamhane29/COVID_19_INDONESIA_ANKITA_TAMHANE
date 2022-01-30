
-- Use the `ref` function to select from other models

select to_date(date) as date,new_cases, new_deaths, new_recovered,new_active_cases
from {{ ref('covid_data_country') }}

