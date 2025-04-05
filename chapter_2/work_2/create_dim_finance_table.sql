create table silver_layer.dim_finance as
select unique_id, iban
from bronze_layer.batch_first_load