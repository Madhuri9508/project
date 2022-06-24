{{config(materialized = "table")}}

select NAME
from {{ source('Snowflake_Source', 'Owners') }}

UNION ALL

select NAME
from {{ source('Snowflake_Source', 'Pets') }}


