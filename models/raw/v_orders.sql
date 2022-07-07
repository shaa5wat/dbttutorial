{{ config(
    schema= 'RAW',
    materialized = 'view'
)}}

SELECT * FROM {{ source('RAW', 'ORDERS') }}