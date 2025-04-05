select *, count(*) as duplicate_values
from bronze_layer.batch_first_load
group by (
	person_name, user_name, email, personal_number,
	birth_date, address, phone, mac_address, ip_address,
	iban,accessed_at, session_duration, download_speed,
	upload_speed,consumed_traffic, unique_id
)
having count(*) > 1