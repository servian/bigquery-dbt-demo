

  create or replace table `graham-hamza-bq-dbt-webinar`.`medicare_provider_2011_analysis_dbt`.`provider_outpatient_charges_2011`
  
  
  OPTIONS()
  as (
    SELECT
  provider_id as outpatient_provider_id,
  provider_name as outpatient_provider_name,
  provider_city as outpatient_provider_city,
  provider_state as outpatient_provider_state,
  ROUND(SUM(outpatient_services),2) as outpatient_sum_outpatient_services,
  ROUND(SUM(average_estimated_submitted_charges),2) as outpatient_sum_average_estimated_submitted_charges,
  ROUND(SUM(average_total_payments),2) as outpatient_sum_average_total_payments
FROM
  `bigquery-public-data`.`medicare`.`outpatient_charges_2011`
GROUP BY
  1,
  2,
  3,
  4
  );
    