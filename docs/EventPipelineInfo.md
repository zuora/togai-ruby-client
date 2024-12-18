# TogaiClient::EventPipelineInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema** | [**EventPipelineInfoEventSchema**](EventPipelineInfoEventSchema.md) |  | [optional] |
| **usage_meters** | [**Array&lt;EventPipelineInfoUsageMeters&gt;**](EventPipelineInfoUsageMeters.md) |  | [optional] |
| **price_plans** | [**Array&lt;EventPipelineInfoPricePlans&gt;**](EventPipelineInfoPricePlans.md) |  | [optional] |
| **account** | [**EventPipelineInfoAccount**](EventPipelineInfoAccount.md) |  | [optional] |
| **customer** | [**EventPipelineInfoCustomer**](EventPipelineInfoCustomer.md) |  | [optional] |
| **feature_details** | [**EventPipelineInfoFeatureDetails**](EventPipelineInfoFeatureDetails.md) |  | [optional] |
| **enrichments** | [**EventPipelineInfoEnrichments**](EventPipelineInfoEnrichments.md) |  | [optional] |
| **revenue_details** | [**Array&lt;EventPipelineInfoRevenueDetails&gt;**](EventPipelineInfoRevenueDetails.md) |  | [optional] |
| **status_before_reverting** | **String** |  | [optional] |
| **base_currency** | **String** |  | [optional] |
| **invoice_currency** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventPipelineInfo.new(
  event_schema: null,
  usage_meters: null,
  price_plans: null,
  account: null,
  customer: null,
  feature_details: null,
  enrichments: null,
  revenue_details: null,
  status_before_reverting: null,
  base_currency: null,
  invoice_currency: null
)
```

