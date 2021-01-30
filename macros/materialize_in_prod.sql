{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {% set default_database = target.database %}

    {% if custom_database_name %}
    
        {% if target.name == 'prod' %}

            northwind-analytics-prod

        {% endif %}

    {% else %}

        {{ default_database }}

    {% endif %}

{%- endmacro %}