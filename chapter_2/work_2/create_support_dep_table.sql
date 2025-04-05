create table golden_layer.support_data as
select 
	fnu.unique_id,
	da.address,
	da.mac_address,
	da.ip_address,
	fnu.session_duration, 
	fnu.download_speed, 
	fnu.upload_speed, 
	ROUND(((fnu.session_duration)*1.0/60),1) as min_session_duration,
	case
		when fnu.download_speed < 50 
		or fnu.upload_speed < 30
		or fnu.session_duration/60 < 1 then true
		else false
	end as technical_issue
from silver_layer.fact_network_usage as fnu
join silver_layer.dim_address as da on fnu.unique_id = da.unique_id