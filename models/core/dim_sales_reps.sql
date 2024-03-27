{{ config(materialized="table") }}

select distinct sales_rep as sales_rep_name, sales_rep_id
from {{ source ("staging", "sales_team") }}
