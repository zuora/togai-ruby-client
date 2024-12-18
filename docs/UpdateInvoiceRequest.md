# TogaiClient::UpdateInvoiceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **status** | **String** | Status of invoice | [optional] |
| **line_items** | [**Array&lt;CustomInvoiceLineItem&gt;**](CustomInvoiceLineItem.md) |  | [optional] |
| **auto_advance** | **Boolean** | This property defines the behaviour of status updates of invoices like: Enabling this property to true auto updates the status of invoice to DUE or PAID accordingly But disabling this property of left null does not auto update the custom status  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateInvoiceRequest.new(
  start_date: 2020-06-04T12:00Z,
  end_date: 2020-07-04T12:00Z,
  status: DUE,
  line_items: null,
  auto_advance: null
)
```

