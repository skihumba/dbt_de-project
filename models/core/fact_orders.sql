{{ config(materialized="table") }}

with
    leads as (select * from {{ ref("staging", "order_leads") }}),

    invoices as (select * from {{ ref("staging", "invoices") }}),
    
    orders as (
        select * form leads
        union all
        select * from invoices
    )
    select * from orders
