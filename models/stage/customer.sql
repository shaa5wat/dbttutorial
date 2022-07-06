{{ config(
    schema= 'STAGE'
)}}

SELECT * FROM {{ source('RAW', 'CUSTOMER') }}