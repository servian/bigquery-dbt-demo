#!/bin/bash

export dbt_dir=$PWD/dbt/
export dbt_profile=$PWD/dbt/dbt-profile

echo $'\n***************** DBT GENERATE DOCS *****************'
dbt docs generate --project-dir $dbt_dir --profiles-dir $dbt_profile
dbt docs serve --port 8001 --project-dir $dbt_dir --profiles-dir $dbt_profile