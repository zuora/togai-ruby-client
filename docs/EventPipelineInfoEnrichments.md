# TogaiClient::EventPipelineInfoEnrichments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**Array&lt;EnrichedField&gt;**](EnrichedField.md) |  | [optional] |
| **dimensions** | [**Array&lt;EnrichedField&gt;**](EnrichedField.md) |  | [optional] |
| **dependencies** | [**Array&lt;EnrichmentDependency&gt;**](EnrichmentDependency.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventPipelineInfoEnrichments.new(
  attributes: null,
  dimensions: null,
  dependencies: null
)
```

