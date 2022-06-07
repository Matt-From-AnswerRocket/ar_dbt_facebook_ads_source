{{ config(enabled=var('ad_reporting__facebook_ads_enabled')) }}

select * from {{ var('creative_history') }}
