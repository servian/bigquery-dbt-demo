-- macro to create sum of fields
{% macro sum_of_fields(field_list) %}
	{% for field in field_list %}
		ROUND(SUM({{field}})) as sum_{{field}},
	{% endfor %}
{% endmacro %}

{% macro get_field_list(table_name,field_type) %}

	{% set project_name = table_name.project  %}
	{% set datset_name = table_name.schema  %}
	{% set table_name = table_name.table  %}


	
	{% set get_columns %}
	SELECT
	 	column_name
	FROM
	`{{project_name}}`.`{{datset_name}}`.INFORMATION_SCHEMA.COLUMNS
	WHERE
	  table_name = '{{table_name}}'
	  and 
	  data_type = "{{field_type}}"
	{% endset %}

	{% set results = run_query(get_columns) %}

	{% if execute %}
		{% set results_list = results.columns[0].values() %}
		{% else %}
		{% set results_list = [] %}
	{% endif %}

	{{ return(results_list) }}
	
{% endmacro %}

{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}




