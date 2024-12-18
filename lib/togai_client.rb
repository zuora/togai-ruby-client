=begin
#Togai Apis

#APIs for Togai App

The version of the OpenAPI document: 1.0
Contact: engg@togai.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

# Common files
require 'togai_client/api_client'
require 'togai_client/api_error'
require 'togai_client/version'
require 'togai_client/configuration'

# Models
require 'togai_client/models/account'
require 'togai_client/models/account_alias'
require 'togai_client/models/account_aliases'
require 'togai_client/models/account_aliases_paginated_response'
require 'togai_client/models/account_paginated_response'
require 'togai_client/models/account_schedule'
require 'togai_client/models/accounts_billing_information'
require 'togai_client/models/activate_price_plan_request'
require 'togai_client/models/add_account_aliases_request'
require 'togai_client/models/add_on'
require 'togai_client/models/add_on_paginated_response'
require 'togai_client/models/add_on_type'
require 'togai_client/models/address'
require 'togai_client/models/alert'
require 'togai_client/models/alert_status'
require 'togai_client/models/alert_template'
require 'togai_client/models/alert_templates_paginated_response'
require 'togai_client/models/alerts_paginated_response'
require 'togai_client/models/alias_paginated_response'
require 'togai_client/models/association_config'
require 'togai_client/models/attribute'
require 'togai_client/models/base_success_response'
require 'togai_client/models/billing_config'
require 'togai_client/models/billing_entitlement_rate_card'
require 'togai_client/models/billing_entitlement_revenue_summary'
require 'togai_client/models/bulk_rate_card_operations_request'
require 'togai_client/models/bulk_rate_card_operations_response'
require 'togai_client/models/calculate_revenue_request'
require 'togai_client/models/calculate_revenue_response'
require 'togai_client/models/calculate_revenue_response_v2'
require 'togai_client/models/computation'
require 'togai_client/models/create_account_alias_request'
require 'togai_client/models/create_account_request'
require 'togai_client/models/create_account_request_without_customer_id'
require 'togai_client/models/create_add_on_request'
require 'togai_client/models/create_alert_request'
require 'togai_client/models/create_alias_request'
require 'togai_client/models/create_bulk_alias_request'
require 'togai_client/models/create_credit_request'
require 'togai_client/models/create_credit_response'
require 'togai_client/models/create_custom_invoice_request'
require 'togai_client/models/create_customer_contact_request'
require 'togai_client/models/create_customer_contact_response'
require 'togai_client/models/create_customer_request'
require 'togai_client/models/create_customer_response'
require 'togai_client/models/create_entity_setting'
require 'togai_client/models/create_event_schema_request'
require 'togai_client/models/create_feature_request'
require 'togai_client/models/create_invoice_group_request'
require 'togai_client/models/create_payment_request'
require 'togai_client/models/create_price_plan_details'
require 'togai_client/models/create_price_plan_details_override'
require 'togai_client/models/create_price_plan_migration_request'
require 'togai_client/models/create_price_plan_request'
require 'togai_client/models/create_price_plan_v2_request'
require 'togai_client/models/create_pricing_rule'
require 'togai_client/models/create_proposal_request'
require 'togai_client/models/create_purchase_request'
require 'togai_client/models/create_usage_meter_request'
require 'togai_client/models/credit'
require 'togai_client/models/credit_balance_response'
require 'togai_client/models/credit_details_response'
require 'togai_client/models/credit_grant_rate_card'
require 'togai_client/models/credit_grant_revenue_summary'
require 'togai_client/models/credit_grant_type'
require 'togai_client/models/credit_rate_details'
require 'togai_client/models/credit_request'
require 'togai_client/models/credit_transaction'
require 'togai_client/models/currency_config'
require 'togai_client/models/currency_rate_value'
require 'togai_client/models/currency_slab_rate_detail'
require 'togai_client/models/custom_invoice_line_item'
require 'togai_client/models/customer'
require 'togai_client/models/customer_paginated_response'
require 'togai_client/models/dependency'
require 'togai_client/models/dimensions_schema'
require 'togai_client/models/edit_account_schedule_request'
require 'togai_client/models/edit_pricing_schedule_request'
require 'togai_client/models/enriched_field'
require 'togai_client/models/enrichment_dependency'
require 'togai_client/models/enrichments'
require 'togai_client/models/entitlement_overage_config'
require 'togai_client/models/entitlement_overage_config_lookup_cycle'
require 'togai_client/models/entitlement_overage_entry'
require 'togai_client/models/entitlement_overage_rate_card'
require 'togai_client/models/entitlement_overage_revenue_summary'
require 'togai_client/models/error_response'
require 'togai_client/models/event'
require 'togai_client/models/event_attribute_schema'
require 'togai_client/models/event_correction_info'
require 'togai_client/models/event_correction_request'
require 'togai_client/models/event_pipeline_info'
require 'togai_client/models/event_pipeline_info_account'
require 'togai_client/models/event_pipeline_info_customer'
require 'togai_client/models/event_pipeline_info_enrichments'
require 'togai_client/models/event_pipeline_info_event_schema'
require 'togai_client/models/event_pipeline_info_feature_details'
require 'togai_client/models/event_pipeline_info_price_plans'
require 'togai_client/models/event_pipeline_info_revenue_details'
require 'togai_client/models/event_pipeline_info_usage_meters'
require 'togai_client/models/event_schema'
require 'togai_client/models/event_schema_list_data'
require 'togai_client/models/event_schema_list_paginated_response'
require 'togai_client/models/event_schema_versions_response'
require 'togai_client/models/event_schemas_for_feature'
require 'togai_client/models/event_source'
require 'togai_client/models/event_with_status'
require 'togai_client/models/event_with_status_and_event_pipeline_info'
require 'togai_client/models/events_correction_response'
require 'togai_client/models/expiry_type'
require 'togai_client/models/external_payment_reference'
require 'togai_client/models/feature'
require 'togai_client/models/feature_config'
require 'togai_client/models/feature_credit_entry'
require 'togai_client/models/feature_details'
require 'togai_client/models/feature_list_response'
require 'togai_client/models/feature_paginated_list_data'
require 'togai_client/models/field'
require 'togai_client/models/file_download_url_response'
require 'togai_client/models/finalize_account_schedules'
require 'togai_client/models/finalize_price_plan_request'
require 'togai_client/models/fixed_fee_rate_card'
require 'togai_client/models/fixed_fee_revenue_summary'
require 'togai_client/models/fixed_fee_type'
require 'togai_client/models/get_customer_portal_delegate_token_request'
require 'togai_client/models/get_entitlement_values_response'
require 'togai_client/models/get_entitlement_values_response_data_inner'
require 'togai_client/models/get_event_response'
require 'togai_client/models/get_events_response'
require 'togai_client/models/get_feature_credit_entries_paginated_response'
require 'togai_client/models/get_feature_credits_response'
require 'togai_client/models/get_job_response'
require 'togai_client/models/get_license_updates_response'
require 'togai_client/models/get_metrics_request'
require 'togai_client/models/get_metrics_response'
require 'togai_client/models/get_proposal_response'
require 'togai_client/models/get_purchase_response'
require 'togai_client/models/grant_details'
require 'togai_client/models/incident'
require 'togai_client/models/incidents_paginated_response'
require 'togai_client/models/ingest_batch_event_request'
require 'togai_client/models/ingest_event_request'
require 'togai_client/models/ingest_event_response'
require 'togai_client/models/ingestion_status'
require 'togai_client/models/invoice'
require 'togai_client/models/invoice_details'
require 'togai_client/models/invoice_details_account'
require 'togai_client/models/invoice_details_customer'
require 'togai_client/models/invoice_details_invoice_group'
require 'togai_client/models/invoice_details_organization'
require 'togai_client/models/invoice_group_accounts_paginated_response'
require 'togai_client/models/invoice_group_details'
require 'togai_client/models/invoice_group_paginated_response'
require 'togai_client/models/invoice_groups'
require 'togai_client/models/invoice_info_inner'
require 'togai_client/models/invoice_line_item'
require 'togai_client/models/invoice_summary'
require 'togai_client/models/invoice_timing'
require 'togai_client/models/invoices_class'
require 'togai_client/models/invoices_status'
require 'togai_client/models/invoices_type'
require 'togai_client/models/job_entries_paginated_response'
require 'togai_client/models/job_entries_response'
require 'togai_client/models/jobs_paginated_response'
require 'togai_client/models/jobs_without_status_info_response'
require 'togai_client/models/license_entries_config'
require 'togai_client/models/license_entries_config_lookup_cycle'
require 'togai_client/models/license_entries_config_lookup_range'
require 'togai_client/models/license_entry'
require 'togai_client/models/license_entry_details_update_request'
require 'togai_client/models/license_rate_card'
require 'togai_client/models/license_rate_card_config'
require 'togai_client/models/license_update'
require 'togai_client/models/license_update_request'
require 'togai_client/models/license_update_response'
require 'togai_client/models/list_credits_response'
require 'togai_client/models/list_invoices_response'
require 'togai_client/models/list_payment_response'
require 'togai_client/models/manage_miscellaneous_charges_request'
require 'togai_client/models/max_quantity_breach_action'
require 'togai_client/models/metric_data_points'
require 'togai_client/models/metric_data_points_grouped_by'
require 'togai_client/models/metric_name'
require 'togai_client/models/metric_query'
require 'togai_client/models/metric_query_filter_entry'
require 'togai_client/models/metric_query_response'
require 'togai_client/models/migration_mode'
require 'togai_client/models/minimum_commitment'
require 'togai_client/models/miscellaneous_charge'
require 'togai_client/models/miscellaneous_charges_response'
require 'togai_client/models/model_alias'
require 'togai_client/models/named_license_entries_config'
require 'togai_client/models/named_license_entries_config_lookup_cycle'
require 'togai_client/models/named_license_entries_config_lookup_range'
require 'togai_client/models/named_license_entry'
require 'togai_client/models/named_license_update'
require 'togai_client/models/named_license_updates_paginated_response'
require 'togai_client/models/pagination_options'
require 'togai_client/models/payment'
require 'togai_client/models/payment_line_item_record'
require 'togai_client/models/plan_override'
require 'togai_client/models/pre_action'
require 'togai_client/models/price_plan'
require 'togai_client/models/price_plan_details'
require 'togai_client/models/price_plan_details_config'
require 'togai_client/models/price_plan_details_override'
require 'togai_client/models/price_plan_info'
require 'togai_client/models/price_plan_list_data'
require 'togai_client/models/price_plan_migration_config'
require 'togai_client/models/price_plan_paginated_response'
require 'togai_client/models/price_plan_type'
require 'togai_client/models/price_plan_v2'
require 'togai_client/models/price_plan_v2_paginated_response'
require 'togai_client/models/price_type'
require 'togai_client/models/pricing_cycle_config'
require 'togai_client/models/pricing_cycle_config_start_offset'
require 'togai_client/models/pricing_cycle_interval'
require 'togai_client/models/pricing_model'
require 'togai_client/models/pricing_rule'
require 'togai_client/models/pricing_rule_action'
require 'togai_client/models/pricing_rule_changes_log'
require 'togai_client/models/pricing_rule_info'
require 'togai_client/models/pricing_rule_timing'
require 'togai_client/models/pricing_rules_log'
require 'togai_client/models/pricing_rules_logs_paginated_response'
require 'togai_client/models/pricing_rules_paginated_response'
require 'togai_client/models/pricing_rules_values'
require 'togai_client/models/pricing_schedule'
require 'togai_client/models/pricing_schedule_paginated_response'
require 'togai_client/models/pricing_schedule_with_price_plan_id'
require 'togai_client/models/proposal'
require 'togai_client/models/proposals_list_response'
require 'togai_client/models/proposals_paginated_response'
require 'togai_client/models/prorated_refund_mode'
require 'togai_client/models/proration_config'
require 'togai_client/models/proration_config_custom_config'
require 'togai_client/models/proration_config_lookup_cycle_config'
require 'togai_client/models/purchase'
require 'togai_client/models/purchase_feature_details'
require 'togai_client/models/purchase_list_response'
require 'togai_client/models/purchase_paginated_list_data'
require 'togai_client/models/purchase_plan_override'
require 'togai_client/models/purchase_status'
require 'togai_client/models/purchase_type'
require 'togai_client/models/query_column'
require 'togai_client/models/query_filter'
require 'togai_client/models/query_function'
require 'togai_client/models/query_input'
require 'togai_client/models/query_input_sort_inner'
require 'togai_client/models/rate_card'
require 'togai_client/models/rate_card_data'
require 'togai_client/models/rate_card_details'
require 'togai_client/models/rate_card_operation'
require 'togai_client/models/rate_card_paginated_response'
require 'togai_client/models/rate_card_type'
require 'togai_client/models/rate_plan'
require 'togai_client/models/rate_value'
require 'togai_client/models/recurrence_config'
require 'togai_client/models/remove_account_alias_request'
require 'togai_client/models/remove_account_aliases_request'
require 'togai_client/models/report'
require 'togai_client/models/report_status'
require 'togai_client/models/report_type'
require 'togai_client/models/reports_paginated_response'
require 'togai_client/models/revenue_info'
require 'togai_client/models/revenue_info_v2'
require 'togai_client/models/revenue_summary_with_metadata'
require 'togai_client/models/schedule_info'
require 'togai_client/models/schedules_paginated_response'
require 'togai_client/models/setting'
require 'togai_client/models/setting_data_type'
require 'togai_client/models/setting_paginated_response'
require 'togai_client/models/slab'
require 'togai_client/models/slab_detail'
require 'togai_client/models/slab_rate'
require 'togai_client/models/slab_revenue'
require 'togai_client/models/slab_revenue_metadata'
require 'togai_client/models/slab_revenue_summary'
require 'togai_client/models/slab_revenue_with_metadata'
require 'togai_client/models/token_response'
require 'togai_client/models/topup_wallet_request'
require 'togai_client/models/update_account_request'
require 'togai_client/models/update_account_schedule_v2_request'
require 'togai_client/models/update_add_on_request'
require 'togai_client/models/update_alert_request'
require 'togai_client/models/update_customer_request'
require 'togai_client/models/update_event_schema_request'
require 'togai_client/models/update_feature_credits_request'
require 'togai_client/models/update_feature_request'
require 'togai_client/models/update_incident_status_request'
require 'togai_client/models/update_invoice_group_accounts'
require 'togai_client/models/update_invoice_request'
require 'togai_client/models/update_price_plan_request'
require 'togai_client/models/update_price_plan_v2_request'
require 'togai_client/models/update_pricing_rules_request'
require 'togai_client/models/update_pricing_schedule_request'
require 'togai_client/models/update_pricing_schedule_request_with_actions'
require 'togai_client/models/update_pricing_schedule_response'
require 'togai_client/models/update_proposal_status'
require 'togai_client/models/update_setting_request'
require 'togai_client/models/update_usage_meter_request'
require 'togai_client/models/update_wallet_request'
require 'togai_client/models/usage_config'
require 'togai_client/models/usage_config_lookup_cycle'
require 'togai_client/models/usage_config_lookup_range'
require 'togai_client/models/usage_cycle_interval'
require 'togai_client/models/usage_lookup_range'
require 'togai_client/models/usage_meter'
require 'togai_client/models/usage_meter_aggregation'
require 'togai_client/models/usage_meter_filter_entry'
require 'togai_client/models/usage_meter_paginated_response'
require 'togai_client/models/usage_rate_card'
require 'togai_client/models/validate_entitlement_value_request'
require 'togai_client/models/validated_entity_error'
require 'togai_client/models/validated_entity_errors_paginated_response'
require 'togai_client/models/versions_to_migrate'
require 'togai_client/models/wallet_balance_response'
require 'togai_client/models/wallet_entries_paginated_response'
require 'togai_client/models/wallet_entry'
require 'togai_client/models/wallet_status'
require 'togai_client/models/wallet_topup_details'

# APIs
require 'togai_client/api/accounts_api'
require 'togai_client/api/add_ons_api'
require 'togai_client/api/alerts_api'
require 'togai_client/api/aliases_api'
require 'togai_client/api/authentication_api'
require 'togai_client/api/credits_api'
require 'togai_client/api/customer_portal_api'
require 'togai_client/api/customers_api'
require 'togai_client/api/entitlements_api'
require 'togai_client/api/event_ingestion_api'
require 'togai_client/api/event_management_api'
require 'togai_client/api/event_schemas_api'
require 'togai_client/api/feature_api'
require 'togai_client/api/file_storage_api'
require 'togai_client/api/invoice_groups_api'
require 'togai_client/api/invoices_api'
require 'togai_client/api/jobs_api'
require 'togai_client/api/licenses_api'
require 'togai_client/api/metrics_api'
require 'togai_client/api/payments_api'
require 'togai_client/api/price_experimentation_api'
require 'togai_client/api/price_plan_v2_api'
require 'togai_client/api/price_plans_api'
require 'togai_client/api/pricing_rules_api'
require 'togai_client/api/reports_api'
require 'togai_client/api/schedules_api'
require 'togai_client/api/settings_api'
require 'togai_client/api/usage_meters_api'
require 'togai_client/api/wallet_api'

module TogaiClient
  class << self
    # Customize default settings for the SDK using block.
    #   TogaiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
