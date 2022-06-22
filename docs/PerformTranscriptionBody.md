# cielo24::PerformTranscriptionBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | The ID of the job |  |
| **transcription_fidelity** | **String** | The desired fidelity of the transcription |  |
| **priority** | **String** | The desired priority of the transcription |  |
| **callback_url** | **String** | A URL with query string which will be called on completion. If submitting the callback_url as a query string parameter, rather than a value in the POST data, the callback_url should be URL encoded. The callback URL can contain tags that will be replaced with job specific data when the callback is called. Below is the list of tags that are supported: {job_id}, {job_name}, {elementlist_version}, {iwp_name} (The Interim Work Product name associated with this ElementList version) | [optional] |
| **options** | **String** | A job options json. See JobOptions object for details. | [optional] |
| **target_language** | **String** | An RFC 5646 language code to translate this job into. If not specified, then no translation will be performed. If specified, but the language code specified matches the language code on the job request, then no translation will be performed. | [optional] |
| **turnaround_hours** | **Integer** | The number of hours after submission that the job will be returned. If not specified, it will be set to a default based on the value of the priority parameter. The defaults are 24 and 48 for the PRIORITY and STANDARD priorities respectively. If you request a smaller number of hours than the default for the priority you have selected, the priority will be automatically changed. For example if you request a turnaround_hours of 16 with a priority of STANDARD, the priority will be automatically, and silently, changed to PRIORITY. | [optional] |

## Example

```ruby
require 'cielo24'

instance = cielo24::PerformTranscriptionBody.new(
  job_id: 0fbd6015910e42dca25a863c4925d77c,
  transcription_fidelity: null,
  priority: null,
  callback_url: http://www.domain.com/path,
  options: {&quot;notes&quot;: &quot;test&quot;},
  target_language: en (Any RFC 5646 language code),
  turnaround_hours: 36
)
```

