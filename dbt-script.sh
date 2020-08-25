#!/bin/bash

echo $'\n*****************COPYING PROFILE DETAILS INTO THE ROOTS DIR*****************'
cp ./profiles.yml ~/.dbt/profiles.yml

echo $'\n*****************DEBUG*****************'
dbt debug

#echo $'\n*****************COMPILE*****************'
#dbt compile
#
#echo $'\n*****************TESTING DBT MODELS*****************'
#dbt test
#
#echo $'\n*****************RUNNING DBT MODELS*****************'
#dbt run
#
#echo $'\n*****************CLEANING UP DBT MODELS*****************'
#dbt clean

# echo $'\n***************** DBT GENERATE DOCS *****************'
# dbt docs generate
# dbt docs serve --port 8001