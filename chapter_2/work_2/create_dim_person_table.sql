create table silver_layer.dim_person as
select unique_id, person_name, user_name, email, phone, birth_date, personal_number
from bronze_layer.batch_first_load