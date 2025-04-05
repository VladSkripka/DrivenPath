create table golden_layer.financial_data as
select 
	fnu.unique_id, 
	df.iban,
	fnu.session_duration, 
	fnu.download_speed, 
	fnu.upload_speed, 
	fnu.consumed_traffic,
	(((fnu.download_speed + fnu.upload_speed)*1.0)/2)+((fnu.consumed_traffic)*1.0/(fnu.session_duration + 1)) as payment_bill
from silver_layer.fact_network_usage as fnu
join silver_layer.dim_finance as df on fnu.unique_id = df.unique_id