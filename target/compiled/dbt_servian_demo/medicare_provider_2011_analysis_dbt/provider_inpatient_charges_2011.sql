SELECT
  provider_id as inpatient_provider_id,
  provider_name as inpatient_provider_name,
  provider_city as inpatient_provider_city,
  provider_state as inpatient_provider_state,
  ROUND(SUM(total_discharges),2) as inpatient_sum_total_discharges,
  ROUND(SUM(average_covered_charges),2) as inpatient_sum_average_covered_charges,
  ROUND(SUM(average_total_payments),2) as inpatient_sum_average_total_payments,
  ROUND(SUM(average_medicare_payments),2) as inpatient_average_medicare_payments
FROM
  `bigquery-public-data`.`medicare`.`inpatient_charges_2011`
GROUP BY
  1,
  2,
  3,
  4