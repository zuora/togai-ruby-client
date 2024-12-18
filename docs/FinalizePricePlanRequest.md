# TogaiClient::FinalizePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migration_mode** | [**MigrationMode**](MigrationMode.md) |  | [optional] |
| **versions_to_migrate** | [**VersionsToMigrate**](VersionsToMigrate.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::FinalizePricePlanRequest.new(
  migration_mode: null,
  versions_to_migrate: null
)
```

