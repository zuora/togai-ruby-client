# TogaiClient::InvoiceLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **type** | **String** | Type of the line item - GRAND_TOTAL_AMOUNT: Sum of all total amount of individual invoices in a grouped(composite) invoice - TOTAL_AMOUNT: Total revenue of the invoice - NET_AMOUNT: Net revenue of the invoice ( Gross revenue - Discounts ) - GROSS_AMOUNT: Gross revenue of the invoice  - PRICE_PLAN_AMOUNT: SUB_TOTAL_AMOUNT + true up amount - SUB_TOTAL_AMOUNT: Sum of all rate card revenues - TRUE_UP_AMOUNT: Minimum commitment - SUB_TOTAL_AMOUNT (Always positive) - TOTAL_USAGE: List of all the usage meter usages - USAGE_METER_USAGE: Usage of an usage meter - USAGE_RATE_CARD_AMOUNT: Revenue generated from usage rate card - USAGE_RATE_CARD_SLAB_AMOUNT: Revenue generated from usage rate card slab - FIXED_FEE_RATE_CARD_AMOUNT: Revenue generated from fixed fee rate card - CREDIT_GRANT_RATE_CARD_AMOUNT: : Revenue generated from credit grant rate card - BILLING_ENTITLEMENT_RATE_CARD_AMOUNT: Revenue generated from billing entitlement rate card - ENTITLEMENT_OVERAGE_RATE_CARD_AMOUNT: : Revenue generated from entitlement overage rate card - ENTITLEMENT_OVERAGE_RATE_CARD_SLAB_AMOUNT: Revenue generated from entitlement overage rate card slab - LICENSE_RATE_CARD_AMOUNT: Revenue generated from license rate card - TOTAL_CREDITS: Sum of all credit amounts - SUB_CREDITS: Granted credit value - TOTAL_ADVANCED_FEES: Sum of all advanced fee revenue - ADVANCED_FIXED_FEE: Revenue generated from advanced fixed fee rate card - ADVANCED_LICENSE_RATE_CARD_AMOUNT: Revenue generated from advanced license rate card - ADVANCED_BILLING_ENTITLEMENT_RATE_CARD_AMOUNT: Revenue generated from advanced billing entitlement rate card - ADVANCED_CREDIT_GRANT_RATE_CARD_AMOUNT: Revenue generated from advanced credit grant rate card - TOTAL_MISCELLANEOUS_CHARGES: Net revenue of all MISCELLANEOUS_CHARGE - MISCELLANEOUS_CHARGE: Custom amount added to a DRAFT invoice - TOTAL_PURCHASE_AMOUNT: Net revenue all rate cards in a purchase plan - CUSTOM_AMOUNT: Custom amount added a DRAFT invoice - CUSTOM_TAG: User defined tags given to each rate card - TOTAL_PRICING_RULE_ADDITION_AMOUNT: Sum of all line items added by applying pricing rules - PRICING_RULE_ADDITION_AMOUNT: Amount added to invoice as a result of applying a pricing rule - PRICING_RULE_REVENUE_UPDATE_AMOUNT: Difference in revenue(value) obtained as a result of applying a pricing rule - PRICING_RULE_USAGE_UPDATE_AMOUNT: Difference in usage(quantity) obtained as a result of applying a pricing rule - RATE_CONFIG_ADJUSTMENT_AMOUNT: Difference in revenue obtained as a result of applying rate config[&#39;minimumRate&#39;, &#39;maximumRate&#39;] at rate card level  |  |
| **value_per_quantity** | **Float** |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **units** | **String** |  | [optional] |
| **value** | **Float** |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **line_items** | [**Array&lt;InvoiceLineItem&gt;**](InvoiceLineItem.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::InvoiceLineItem.new(
  id: null,
  description: null,
  type: null,
  value_per_quantity: null,
  quantity: null,
  units: null,
  value: null,
  metadata: null,
  line_items: null
)
```

