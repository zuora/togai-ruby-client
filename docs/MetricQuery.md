# TogaiClient::MetricQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Mandatory  for all request.  User defined ID for identifying the request for your internal reference  |  |
| **name** | [**MetricName**](MetricName.md) |  | [default to &#39;EVENTS&#39;] |
| **aggregation_period** | **String** | Set the aggregation period. Allowed periods are HOUR, DAY, WEEK, MONTH | [default to &#39;DAY&#39;] |
| **group_by** | **String** | Group your metric with a groupBy field.  Allowed fields are  ACCOUNT_ID EVENT_STATUS  SCHEMA_NAME  USAGE_METER_ID [Use BILLABLE_ID as this will be deprecated soon...] BILLABLE_ID RAW_EVENT_STATUS Please refer the table above for the list of combinations allowed in the groupBy  | [optional] |
| **configs** | **Hash&lt;String, String&gt;** | Configurations. | Metric Name       | Config Key | Allowed Values  | Default value |              Description          | |-------------------|------------|-----------------|---------------|-----------------------------------| | REVENUE           | CURRENCY   | BASE or INVOICE | BASE          | currency to return the revenue in | | REVENUE_FOR_CYCLE | CURRENCY   | BASE or INVOICE | BASE          | currency to return the revenue in |  | [optional] |
| **filters** | [**Array&lt;MetricQueryFilterEntry&gt;**](MetricQueryFilterEntry.md) | Filter on specific fields.  Refer possible fieldNames and fieldValues from the table above.  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::MetricQuery.new(
  id: null,
  name: null,
  aggregation_period: null,
  group_by: null,
  configs: null,
  filters: null
)
```

