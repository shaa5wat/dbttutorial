{{ config(
    schema= 'STAGE',
    database= 'PC_MATILLION_DB' 
)}}

SELECT * FROM "PC_MATILLION_DB"."RAW"."ORDERS"