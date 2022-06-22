# cielo24::NewJobBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_name** | **String** | A human readable identifier for the job | [optional] |
| **language** | **String** | Native job language | [optional] |
| **external_id** | **String** | An identifier you want to associate with this job | [optional] |
| **username** | **String** | Create the job in specified sub-account | [optional] |
| **requestor** | **String** | An requestor you want to associate with this job | [optional] |
| **reference** | **String** | An reference you want to associate with this job | [optional] |
| **expected_speakers** | **Integer** | Amount of speakers that the video will have | [optional] |
| **is_duplicate** | **String** | Allows creating multiple jobs with the same external_id | [optional][default to &#39;false&#39;] |

## Example

```ruby
require 'cielo24'

instance = cielo24::NewJobBody.new(
  job_name: null,
  language: en (Any RFC 5646 language code),
  external_id: 12345,
  username: my_sub_account,
  requestor: test_requestor,
  reference: test_reference,
  expected_speakers: 40,
  is_duplicate: null
)
```

