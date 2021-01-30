{% macro generate_database_name(custom_database_name, node) -%}

    {{ log("Running generate database name macro") }}
    {% set default_database = target.database %}

    {% if custom_database_name %}
    
        {% if target.name in ["prod"] %}

            {% set db_suffix = "-prod" %}

        {% else %}

            {% set db_suffix = "" %}

        {% endif %}

        {{ custom_database_name }}{{ db_suffix }}

    {% else %}

        {{ default_database }}

    {% endif %}

{% endmacro %}