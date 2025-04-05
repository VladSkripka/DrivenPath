create table silver_layer.dim_date as
select unique_id, accessed_at
from bronze_layer.batch_first_load