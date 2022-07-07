{{ config(
    schema= 'STAGE'
)}}

SELECT * FROM {{ source('RAW', 'V_CUSTOMER') }}