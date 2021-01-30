{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {% set default_database = target.database %}

    {% if custom_database_name %}
    
        {% if target.name in ['prod'] %}

            {% set db_suffix = "-prod" %}

        {% else %}

            {% set db_suffix = "-dev" %}

        {% endif %}

        northwind-analytics{{db_suffix}}

    {% else %}

        {{ default_database }}

    {% endif %}

{%- endmacro %}