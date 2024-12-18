# TogaiClient::MiscellaneousCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the miscellaneous charge |  |
| **rate** | **Float** | Rate of the charge | [optional] |
| **quantity** | **Float** | Quantity of the charge | [optional] |
| **value** | **String** | Value of the charge Possible values: 1. Fixed number [Example: 10] 2. Json Logic [Example: {\&quot;*\&quot;: [{\&quot;var\&quot;: \&quot;um.lineitem.id\&quot;}, 0.1]}]    You can use all line item ids as variables in the json logic  | [optional] |
| **consider_for_revenue** | **Boolean** | Specifies whether to consider this miscellaneous charge for revenue or not | [optional][default to false] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::MiscellaneousCharge.new(
  name: Charge 1,
  rate: 20,
  quantity: 10,
  value: 100,
  consider_for_revenue: true
)
```

