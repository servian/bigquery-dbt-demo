{{ config(materialized='view') }} 

{% set fields = ["line_srvc_cnt", "bene_unique_cnt", "bene_day_srvc_cnt",
"average_medicare_allowed_amt","stdev_medicare_allowed_amt","average_submitted_chrg_amt",
"stdev_submitted_chrg_amt","average_medicare_payment_amt","stdev_medicare_payment_amt"] %}
SELECT
 	nppes_provider_city,
	{{ sum_of_fields(fields) }}
FROM
  {{ source('raw_medicare', 'physicians_and_other_supplier_2012') }}
GROUP BY
  1





