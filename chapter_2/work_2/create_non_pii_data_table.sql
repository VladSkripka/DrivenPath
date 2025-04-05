create table golden_layer.non_pii_data as
select 
	'***MASKED***' as person_name,
	substring(dp.user_name, 1, 5)|| '*****' as user_name,
	substring(dp.email, 1, 5)|| '*****' as email,
	'***MASKED***' as personal_number,
	'***MASKED***' as birth_date,
	'***MASKED***' as address,
	'***MASKED***' as phone,
	substring(da.mac_address, 1, 5)|| '*****' as mac_address,
	substring(da.ip_address, 1, 5)|| '*****' as ip_address,
	substring(df.iban, 1, 5)|| '*****' as iban,
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