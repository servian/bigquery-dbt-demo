SELECT
	*
FROM
 	{{ref("provider_inpatient_charges_2011")}} outpatient
JOIN
	{{ref("provider_outpatient_charges_2011")}} inpatient
ON
	outpatient_provider_id = inpatient_provider_id 