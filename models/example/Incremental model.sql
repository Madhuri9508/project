{{config(materialized = "incremental")}}

select *
from {{ source('Snowflake_Source', 'Owners') }}

{% if is_incremental() %}

 -- this filter will only be applied on an incremental run
 where NAME = 'Samantha'

{% endif %} 

