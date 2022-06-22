# cielo24::JobInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  | [optional] |
| **job_name** | **String** |  | [optional] |
| **media_length_seconds** | **Float** |  | [optional] |
| **external_id** | **String** | Depends on third-party integrations. | [optional] |
| **priority** | **String** |  | [optional] |
| **fidelity** | **String** |  | [optional] |
| **job_status** | **String** |  | [optional] |
| **options** | [**JobOptions**](JobOptions.md) |  | [optional] |
| **return_targets** | **Object** |  | [optional] |
| **source_language** | **String** | RFC 5646 Language Code | [optional] |
| **target_language** | **String** | RFC 5646 Language Code | [optional] |
| **creation_date** | **String** | ISO 8601 Date String | [optional] |
| **start_date** | **String** | ISO 8601 Date String | [optional] |
| **due_date** | **String** | ISO 8601 Date String | [optional] |
| **completed_date** | **String** | ISO 8601 Date String | [optional] |
| **return_date** | **String** | ISO 8601 Date String | [optional] |
| **authorization_date** | **String** | ISO 8601 Date String | [optional] |
| **job_difficulty** | **String** |  | [optional] |

## Example

```ruby
require 'cielo24'

instance = cielo24::JobInfoResponse.new(
  job_id: 0fbd6015910e42dca25a863c4925d77c,
  job_name: sample_job_name,
  media_length_seconds: 65.3,
  external_id: 12345,
  priority: PRIORITY,
  fidelity: PREMIUM,
  job_status: In Process,
  options: null,
  return_targets: null,
  source_language: en,
  target_language: fr,
  creation_date: 2014-07-31T12:35:52.324389,
  start_date: 2014-07-31T12:35:52.324389,
  due_date: 2014-07-31T12:35:52.324389,
  completed_date: 2014-07-31T12:35:52.324389,
  return_date: 2014-07-31T12:35:52.324389,
  authorization_date: 2014-07-31T12:35:52.324389,
  job_difficulty: Good
)
```

