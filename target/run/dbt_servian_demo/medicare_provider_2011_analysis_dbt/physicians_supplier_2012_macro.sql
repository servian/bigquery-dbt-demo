

  create or replace view `graham-hamza-bq-dbt-webinar`.`medicare_provider_2011_analysis_dbt`.`physicians_supplier_2012_macro`
  OPTIONS()
  as (
     


SELECT
 	nppes_provider_city,
	
	
		ROUND(SUM(line_srvc_cnt)) as sum_line_srvc_cnt,
	
		ROUND(SUM(bene_unique_cnt)) as sum_bene_unique_cnt,
	
		ROUND(SUM(bene_day_srvc_cnt)) as sum_bene_day_srvc_cnt,
	
		ROUND(SUM(average_medicare_allowed_amt)) as sum_average_medicare_allowed_amt,
	
		ROUND(SUM(stdev_medicare_allowed_amt)) as sum_stdev_medicare_allowed_amt,
	
		ROUND(SUM(average_submitted_chrg_amt)) as sum_average_submitted_chrg_amt,
	
		ROUND(SUM(stdev_submitted_chrg_amt)) as sum_stdev_submitted_chrg_amt,
	
		ROUND(SUM(average_medicare_payment_amt)) as sum_average_medicare_payment_amt,
	
		ROUND(SUM(stdev_medicare_payment_amt)) as sum_stdev_medicare_payment_amt,
	

FROM
  `bigquery-public-data`.`medicare`.`physicians_and_other_supplier_2012`
GROUP BY
  1
  );
