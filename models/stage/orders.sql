{{ config(
    schema= 'STAGE',
    database= 'PC_MATILLION_DB', 
    materialized= 'view'
)}}

SELECT * FROM "PC_MATILLION_DB"."RAW"."ORDERS"