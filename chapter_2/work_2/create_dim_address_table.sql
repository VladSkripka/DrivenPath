create table silver_layer.dim_address as
select unique_id, address, mac_address, ip_address
from bronze_layer.batch_first_load