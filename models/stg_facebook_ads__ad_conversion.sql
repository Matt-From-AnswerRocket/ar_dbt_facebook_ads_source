
with base as (

    select * 
    from {{ ref('stg_facebook_ads__ad_conversion_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_facebook_ads__ad_conversion_tmp')),
                staging_columns=get_ad_conversion_columns()
            )
        }}
        
    from base
),

fields_xf as (
    
    select 
        ad_id,
        action_type,
        row_number() over (partition by ad_id order by _fivetran_synced desc) = 1 as is_most_recent_record
    from fields

)

select * from fields_xf
