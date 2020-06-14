SELECT
	*
FROM
 	`graham-hamza-bq-dbt-webinar`.`medicare_provider_2011_analysis_dbt`.`provider_inpatient_charges_2011` outpatient
JOIN
	`graham-hamza-bq-dbt-webinar`.`medicare_provider_2011_analysis_dbt`.`provider_outpatient_charges_2011` inpatient
ON
	outpatient_provider_id = inpatient_provider_id