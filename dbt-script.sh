#!/bin/bash

export dbt_dir=$PWD/dbt/
export dbt_profile=$PWD/dbt/dbt-profile

echo $'\n*****************dbt DEBUG*****************'
dbt debug --project-dir $dbt_dir --profiles-dir $dbt_profile

echo $'\n*****************dbt RUN*****************'
dbt run --project-dir $dbt_dir --profiles-dir $dbt_profile

echo $'\n*****************dbt TEST*****************'
dbt test --project-dir $dbt_dir --profiles-dir $dbt_profile

echo $'\n*****************dbt CLEAN*****************'
dbt clean --project-dir $dbt_dir --profiles-dir $dbt_profile