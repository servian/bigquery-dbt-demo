{% set float_fields = get_field_list(table_name = ref("provider_inpatient_charges_2011"),
	field_type = "FLOAT64" ) %}

SELECT
	{{ sum_of_fields(float_fields) }}
FROM
 	{{ref("provider_inpatient_charges_2011")}} outpatient
JOIN
	{{ref("provider_outpatient_charges_2011")}} inpatient
ON
	outpatient_provider_id = inpatient_provider_id 