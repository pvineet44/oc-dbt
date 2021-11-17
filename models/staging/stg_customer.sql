with source as (
	select * from {{ ref('customer') }}
),


 stage_customer as (
	select
		customer_id,
		state_code,
		city,
		zipcode
	from source
)
select * from stage_customer
