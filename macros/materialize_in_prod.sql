{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {% set default_database = target.database %}

    {% if custom_database_name %}
    
        {% if target.name == 'prod' %}

            {% set custom_database_name = 'northwind-analytics-prod' %}

        {% endif %}

        {{ custom_database_name }}

    {% else %}

        {{ default_database }}

    {% endif %}

{%- endmacro %}