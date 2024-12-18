# TogaiClient::FeatureCreditEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **source** | **String** | Source of the feature credit |  |
| **status** | **String** | Status of the feature credit entry |  |
| **effective_from** | **Time** |  |  |
| **effective_until** | **Time** |  |  |
| **granted** | **Float** |  | [optional] |
| **balance** | **Float** |  | [optional] |
| **used** | **Float** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::FeatureCreditEntry.new(
  id: purchase.20rvWRxQcQK.0ZwPG$1,
  source: null,
  status: null,
  effective_from: 2021-03-04T14:25:10Z,
  effective_until: 2021-05-20T01:00:10Z,
  granted: 15,
  balance: 10,
  used: 10
)
```

