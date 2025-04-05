create table golden_layer.pii_data as
select 
	dp.person_name,
	dp.user_name,
	dp.email,
	dp.personal_number,
	dp.birth_date,
	da.address,
	dp.phone,
	da.mac_address,
	da.ip_address,
	df.iban,
	dd.accessed_at,
	fnu.session_duration, 
	fnu.download_speed, 
	fnu.upload_speed,
	fnu.consumed_traffic,
	fnu.unique_id
from silver_layer.fact_network_usage as fnu
join silver_layer.dim_address as da on fnu.unique_id = da.unique_id
join silver_layer.dim_date as dd on da.unique_id = dd.unique_id
join silver_layer.dim_finance as df on df.unique_id = dd.unique_id
join silver_layer.dim_person as dp on df.unique_id = dp.unique_id