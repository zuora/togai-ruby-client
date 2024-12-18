# TogaiClient::Invoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of invoice |  |
| **customer_id** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **price_plan_id** | **String** |  | [optional] |
| **usage_info** | [**Array&lt;InvoiceLineItem&gt;**](InvoiceLineItem.md) |  | [optional] |
| **revenue_info** | [**InvoiceLineItem**](InvoiceLineItem.md) |  | [optional] |
| **invoice_details** | [**InvoiceDetails**](InvoiceDetails.md) |  | [optional] |
| **status** | [**InvoicesStatus**](InvoicesStatus.md) |  |  |
| **finalizing_status** | **String** |  | [optional] |
| **invoice_class** | [**InvoicesClass**](InvoicesClass.md) |  |  |
| **invoice_type** | [**InvoicesType**](InvoicesType.md) |  |  |
| **auto_advance** | **Boolean** |  | [optional] |
| **start_date** | **Time** | Start date of the invoice | [optional] |
| **end_date** | **Time** | End date of the invoice | [optional] |
| **end_date_inclusive** | **Time** | Inclusive end date of the invoice | [optional] |
| **invoice_date** | **Time** | Invoice date of the invoice |  |
| **due_date** | **Time** | Due date of the invoice | [optional] |
| **generated_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **info** | [**Array&lt;InvoiceInfoInner&gt;**](InvoiceInfoInner.md) |  | [optional] |
| **sequence_id** | **String** | Sequence id of the invoice | [optional] |
| **pdf_url** | **String** | Download URL of the pdf file corresponding to the invoice | [optional] |
| **total_amount** | **Float** |  |  |
| **paid_amount** | **Float** |  |  |
| **net_term_days** | **Integer** | Number of days from the invoice date after which an invoice is considered overdue. |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Invoice.new(
  id: null,
  customer_id: null,
  owner_id: null,
  price_plan_id: null,
  usage_info: null,
  revenue_info: null,
  invoice_details: null,
  status: null,
  finalizing_status: null,
  invoice_class: null,
  invoice_type: null,
  auto_advance: true,
  start_date: 2020-07-04T12:00Z,
  end_date: 2020-07-04T12:00Z,
  end_date_inclusive: 2020-07-03T11:59:59.999Z,
  invoice_date: 2020-07-04T12:00Z,
  due_date: 2020-07-04T12:00Z,
  generated_at: null,
  updated_at: null,
  metadata: null,
  info: null,
  sequence_id: null,
  pdf_url: null,
  total_amount: null,
  paid_amount: null,
  net_term_days: null
)
```

