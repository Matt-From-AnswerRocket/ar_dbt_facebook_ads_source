{% macro get_ad_conversion_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "ad_id", "datatype": dbt_utils.type_int()},
    {"name": "index", "datatype": dbt_utils.type_int()},
    {"name": "application", "datatype": dbt_utils.type_string()},
    {"name": "creative", "datatype": dbt_utils.type_string()},
    {"name": "dataset", "datatype": dbt_utils.type_string()},
    {"name": "event", "datatype": dbt_utils.type_string()},
    {"name": "event_type", "datatype": dbt_utils.type_string()},
    {"name": "fb_pixel", "datatype": dbt_utils.type_string()},
    {"name": "fb_pixel_event", "datatype": dbt_utils.type_string()},
    {"name": "leadgen", "datatype": dbt_utils.type_int()},
    {"name": "object", "datatype": dbt_utils.type_string()},
    {"name": "offer", "datatype": dbt_utils.type_string()},
    {"name": "offsite_pixel", "datatype": dbt_utils.type_string()},
    {"name": "page", "datatype": dbt_utils.type_string()},
    {"name": "post", "datatype": dbt_utils.type_int()},
    {"name": "question", "datatype": dbt_utils.type_string()},
    {"name": "response", "datatype": dbt_utils.type_string()},
    {"name": "subtype", "datatype": dbt_utils.type_string()},
    {"name": "action_type", "datatype": dbt_utils.type_string()},
    {"name": "event_creator", "datatype": dbt_utils.type_string()},
    {"name": "object_domain", "datatype": dbt_utils.type_string()},
    {"name": "offer_creator", "datatype": dbt_utils.type_string()},
    {"name": "page_parent", "datatype": dbt_utils.type_string()},
    {"name": "post_object_wall", "datatype": dbt_utils.type_string()},
    {"name": "post_wall", "datatype": dbt_utils.type_string()},
    {"name": "post_object", "datatype": dbt_utils.type_string()},
    {"name": "question_creator", "datatype": dbt_utils.type_string()},
    {"name": "ad_updated_time", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
