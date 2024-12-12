# TogaiClient::RevenueSummaryWithMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revenue** | **Float** |  |  |
| **revenue_summary** | [**Array&lt;RevenueSummaryWithMetadata&gt;**](RevenueSummaryWithMetadata.md) | Field: revenue is computed for all rate cards Field: slabRevenues is supported for only usage/license Field: metadata is populated based on application of rateConfig(&#39;minimumRate&#39;, &#39;maximumRate&#39;)  | [optional] |
| **slab_revenues** | [**Array&lt;SlabRevenueWithMetadata&gt;**](SlabRevenueWithMetadata.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RevenueSummaryWithMetadata.new(
  revenue: null,
  revenue_summary: null,
  slab_revenues: null,
  metadata: null
)
```

