{% snapshot orders_snapshot %}



{{
    config(
      target_database='PC_MATILLION_DB',
      target_schema='STAGE',
      unique_key='O_ORDERKEY',
      strategy='check',
      alias='ORDERS',
      check_cols=['O_ORDERKEY', 'O_CUSTKEY', 'O_ORDERSTATUS', 'O_TOTALPRICE', 'O_ORDERDATE', 'O_ORDERPRIORITY', 'O_CLERK', 'O_SHIPPRIORITY', 'O_COMMENT']
    )
}}

select * from {{ source('RAW', 'ORDERS') }}

{% endsnapshot %}
