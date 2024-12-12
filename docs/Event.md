# TogaiClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_name** | **String** | Name of the Event Schema.  Know more about [event schema](https://docs.togai.com/docs/event-schemas)  |  |
| **id** | **String** | Togai restricts users to ingest events with same id within a period of *45 days*. This restriction is common for [/entitled API](/api-reference/entitlements/ingest-event-if-a-user-is-entitled-to-a-feature), [/ingest API](/api-reference/event-ingestion/ingest-events-to-togai) and [/ingestBatch API](/api-reference/event-ingestion/ingest-events-to-togai-in-batch). i.e, an id used on /ingest API will not be allowed on /ingestBatch or /entitled APIs | [optional] |
| **timestamp** | **Time** | Source time stamp of the event. This timestamp must be in ISO 8601 format. |  |
| **account_id** | **String** | The event will be associated with the provided account |  |
| **attributes** | [**Array&lt;Attribute&gt;**](Attribute.md) | Attributes are numeric values. It can be usage metric which you push to Togai |  |
| **dimensions** | **Hash&lt;String, String&gt;** | Dimensions are tags/labels associated with the events. |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Event.new(
  schema_name: null,
  id: c0b1306d-f506-43a6-856b-69221efaee6b,
  timestamp: null,
  account_id: 1,
  attributes: null,
  dimensions: null
)
```

