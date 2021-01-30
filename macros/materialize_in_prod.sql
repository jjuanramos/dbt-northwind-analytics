{% macro generate_database_name(custom_database_name, node) -%}

    {% set default_database = target.database %}
    {% set production_database = 'northwind-analytics-prod' %}

    {% if custom_database_name %}
    
        {% if target.name in ['prod'] %}

            {{ production_database }}

        {% endif %}

    {% else %}

        {{ default_database }}

    {% endif %}

{%- endmacro %}