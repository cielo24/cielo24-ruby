# cielo24::PerformTranslationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **translation_job_ids** | **Array&lt;String&gt;** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'cielo24'

instance = cielo24::PerformTranslationResponse.new(
  translation_job_ids: [&quot;0fbd6015910e42dca25a863c4925d77c&quot;],
  message: Child Translation Created for de. Child Translation already exists for fr
)
```

