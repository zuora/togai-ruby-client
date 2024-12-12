# TogaiClient::CreditDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **purpose** | **String** |  |  |
| **applicable_entity_ids** | **Array&lt;String&gt;** | List of entity ids for which the credit is applicable. If null or empty, the credit is applicable to all ids. This list can accept special values like: - ALL_USAGE_METER_RATE_CARDS: To apply the credit to all usage meter rate cards - ALL_FIXED_FEE_RATE_CARDS: To apply the credit to all fixed fee rate cards  | [optional] |
| **effective_from** | **Date** |  |  |
| **effective_until** | **Date** |  | [optional] |
| **credit_amount** | **Float** |  | [optional] |
| **priority** | **Integer** |  |  |
| **grantor_id** | **String** | The entity through which the credit has been granted | [optional] |
| **idempotency_key** | **String** | The idempotency key for uniqueness of the credit record | [optional] |
| **id** | **String** | Identifier of credits |  |
| **customer_id** | **String** |  |  |
| **status** | **String** |  |  |
| **credit_unit** | **String** |  | [optional] |
| **hold_amount** | **Float** |  | [optional] |
| **consumed_amount** | **Float** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  | [optional] |
| **transactions** | [**Array&lt;CreditTransaction&gt;**](CreditTransaction.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreditDetailsResponse.new(
  account_id: ACC001,
  purpose: PREPAID_CREDIT,
  applicable_entity_ids: null,
  effective_from: Sat Jul 04 00:00:00 UTC 2020,
  effective_until: Sun Jul 04 00:00:00 UTC 2021,
  credit_amount: 1000,
  priority: 1,
  grantor_id: null,
  idempotency_key: null,
  id: cred.1znqBOVcai0.0tBFz,
  customer_id: 7VcRw9xZDIqsC5E,
  status: ACTIVE,
  credit_unit: USD,
  hold_amount: 500,
  consumed_amount: 400,
  created_at: null,
  updated_at: null,
  transactions: null
)
```

