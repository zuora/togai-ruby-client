# TogaiClient::Attribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event attribute |  |
| **value** | **String** | Value of the event attribute |  |
| **unit** | **String** | Unit with which the attribute value was measured. Natively supported units - \&quot;Meters, Miles, Kilometers, Grams, Kilograms, ounces, Pounds, Minutes, Hours, Seconds, Milliseconds, Microseconds, None\&quot;. Clients are free to add any other custom units. | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Attribute.new(
  name: message,
  value: 100,
  unit: characters
)
```

