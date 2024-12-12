# TogaiClient::CreatePricePlanMigrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_id** | **String** | Id of source price plan |  |
| **source_version** | **Integer** | Version of the source price plan |  |
| **target_id** | **String** | Id of target price plan | [optional] |
| **target_version** | **Integer** | Version of the target price plan | [optional] |
| **migration_mode** | **String** |  |  |
| **retain_start_offsets** | **Boolean** | If this flag is true, current pricing cycle of the account on the date of association will continue rather  than the configurations of the newly associated price plan. Pricing cycle overrides specified  using  &#x60;pricePlanDetailsOverride&#x60; will take precedence over the pricing cycle configurations of  the new price plan that the account needs to migrate to. PricingCycleInterval of the existing plan and  the new plan must be same for this to work. We&#39;ll return a &#x60;400 BadRequest&#x60; otherwise. Examples:   - Ongoing plan (1st Oct to 30th Oct) - {dayOffset: 1, monthOffset: NIL}     New association (15th Oct to 15th Nov) of different price plan with retainStartOffsets option true      will use the same pricing cycle configuration {dayOffset: 1, monthOffset: NIL} rather than using the     pricing cycle configuration of the new price plan that the account needs to migrate to.   - Ongoing plan (1st Oct to 30th Oct) - {dayOffset: 1, monthOffset: NIL}     New association (1st Nov to 30th Nov) of different price plan with retainStartOffsets option true will     throw a &#x60;400 BadRequest&#x60; as no existing price plan configuration found on date of association  | [optional] |
| **is_price_plan_v2_migration** | **Boolean** | If this flag is true, the migration will be done for price plan v2. Default value is false  | [optional] |
| **require_confirmation** | **Boolean** | This field specifies whether to process job or to wait till the job is confirmed. Default value: false  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricePlanMigrationRequest.new(
  source_id: null,
  source_version: null,
  target_id: null,
  target_version: null,
  migration_mode: null,
  retain_start_offsets: null,
  is_price_plan_v2_migration: null,
  require_confirmation: null
)
```

