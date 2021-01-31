{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {{ log("Running generate database name macro") }}
    {% set default_database = target.database %}
    {% set production_database = 'northwind-analytics-prod' %}

    {% if custom_database_name %}
    
        {% if target.name in ["prod"] %}

            {{ production_database }}

        {% endif %}

        {{ custom_database_name }}

    {% else %}

        {{ default_database }}

    {% endif %}

{% endmacro %}