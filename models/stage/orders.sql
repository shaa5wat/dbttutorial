{{ config(
    schema= 'STAGE',
    database= 'PC_MATILLION_DB'
)}}



SELECT * FROM {{ source('RAW', 'V_ORDERS') }}

-- {% if is_incremental() %}
-- where INSERTED_DATE > (select max(INSERTED_DATE) from {{ this }})
-- {% endif %}

 -- materialized='incremental',
 -- unique_key='INSERTED_DATE'

-- {{ config(
--     schema= 'STAGE',
--     database= 'PC_MATILLION_DB',
--     materialized='incremental',
--     unique_key='o_orderkey',
--     incremental_strategy='merge'
-- )}}

-- {{
--     config(
--       target_database='PC_MATILLION_DB',
--       target_schema='STAGE',
--       unique_key='O_ORDERKEY',
--       strategy='timestamp',
--       updated_at='LAST_UPDATED_DATE',
--     )
-- }}