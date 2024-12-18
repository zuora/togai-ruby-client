# TogaiClient::UpdateAccountScheduleV2Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode of request to create dis/association | [optional] |
| **effective_from** | **Date** | Date of effectiveness of the association. The date is expected in YYYY-MM-DD format - Editing of a BILLING plan with deferredRevenue can be achieved with    effectiveFrom as start date of current cycle or using &#x60;retainStartOffset&#x60; option.  |  |
| **effective_until** | **Date** | Date until which the association must be effective. The date is expected in YYYY-MM-DD format  |  |
| **association_config** | [**AssociationConfig**](AssociationConfig.md) |  | [optional] |
| **merge_schedules** | **Boolean** | If this flag is true, the schedules will be merged with the existing schedules of the account if possible. If this flag is false, the existing schedules will be replaced with the new schedules. Default value is false  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateAccountScheduleV2Request.new(
  mode: null,
  effective_from: null,
  effective_until: null,
  association_config: null,
  merge_schedules: null
)
```

