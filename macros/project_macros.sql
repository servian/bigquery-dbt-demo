-- macro to create sum of fields
{% macro sum_of_fields(field_list) %}
	{% for field in field_list %}
		ROUND(SUM({{field}})) as sum_{{field}},
	{% endfor %}
{% endmacro %}


