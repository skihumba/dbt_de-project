{{ config(materialized="table") }}

select distinct company_name, company_id
from {{ source("staging", "sales_team") }}
