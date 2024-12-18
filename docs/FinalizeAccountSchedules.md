# TogaiClient::FinalizeAccountSchedules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_schedules** | **Boolean** | If this flag is true, the schedules will be merged with the existing schedules of the account if possible. If this flag is false, the existing schedules will be replaced with the new schedules. Default value is false  | [optional] |
| **pre_actions** | [**Array&lt;PreAction&gt;**](PreAction.md) | Pre actions to be performed before association or disassociation | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::FinalizeAccountSchedules.new(
  merge_schedules: null,
  pre_actions: null
)
```

