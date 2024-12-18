# TogaiClient::GetFeatureCreditsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **feature_id** | **String** |  |  |
| **granted** | **Float** |  |  |
| **balance** | **Float** |  |  |
| **overage_limit** | **Float** |  | [optional] |
| **used_overage** | **Float** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::GetFeatureCreditsResponse.new(
  account_id: acc.fdjsl.313,
  feature_id: feat.fdjsl.313,
  granted: 15,
  balance: 10,
  overage_limit: 15,
  used_overage: 10
)
```

