create table silver_layer.fact_network_uasge as
select unique_id, session_duration, download_speed, upload_speed, consumed_traffic
from bronze_layer.batch_first_load