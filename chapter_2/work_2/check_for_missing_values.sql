select count(*) as null_values
from bronze_layer.batch_first_load
where
person_name is NULL
or user_name is NULL
or email is NULL
or personal_number is NULL
or birth_date is NULL
or address is NULL
or phone is NULL
or mac_address is NULL
or ip_address is NULL
or iban is NULL
or accessed_at is NULL
or session_duration is NULL
or download_speed is NULL
or upload_speed is NULL
or consumed_traffic is NULL
or unique_id is NULL