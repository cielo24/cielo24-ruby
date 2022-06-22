# cielo24::JobOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_approval_steps** | **Array&lt;String&gt;** | Requires your approval of a job at specified points in the workflow. When the job is ready for approval you will be emailed a link that will take you to a web based tool you can use to view, edit and approve the job. You may request approval at two points in the workflow: before translation and before the job is returned. | [optional] |
| **customer_approval_tool** | **String** | Determines which web based tool to use for viewing, editing and approving jobs. | [optional][default to &#39;CIELO24&#39;] |
| **custom_metadata** | **Object** | A JSON dictionary of key value pairs. These will be used as substitution strings when building the callback URL and custom DFXP caption header. | [optional] |
| **notes** | **Object** | Allows you to provide text that will be displayed to the transcriber when the job is processed. An HTML included will be escaped. | [optional] |
| **return_iwp** | [**Array&lt;IWPEnum&gt;**](IWPEnum.md) | Allows you to receive additional callbacks when interim versions of the job are completed. If you specified a callback_url, then a callback will sent for FINAL regardless of the value of this option. | [optional] |
| **generate_media_intelligence_iwp** | [**Array&lt;IWPEnum&gt;**](IWPEnum.md) | Requests that media intelligence be generated for the specified interim/final versions of the transcript. Media intelligence data is added to the ElementList and can be retrieve using the get_elementlist API call. See [ElementList](https://cielo24.readthedocs.io/en/latest/output_formats/elementlist.html#media-intelligence-label) for details. | [optional] |
| **speaker_id** | **String** | Requests that speaker names be identified. | [optional][default to &#39;false&#39;] |
| **audio_description** | **String** | Requests that all noises and sounds be identified. | [optional][default to &#39;false&#39;] |
| **on_screen_text** | **String** | Requests that any text that appears in the media be added to the transcription. | [optional][default to &#39;false&#39;] |
| **music_lyrics** | **String** | Requests that lyrics to songs be transcribed instead of labeled [MUSIC]. | [optional][default to &#39;false&#39;] |
| **custom_special_handling** | **String** | Requests that transcribers follow submitted instruction set. | [optional][default to &#39;false&#39;] |

## Example

```ruby
require 'cielo24'

instance = cielo24::JobOptions.new(
  customer_approval_steps: null,
  customer_approval_tool: null,
  custom_metadata: {&quot;key&quot;:&quot;value&quot;},
  notes: null,
  return_iwp: null,
  generate_media_intelligence_iwp: null,
  speaker_id: null,
  audio_description: null,
  on_screen_text: null,
  music_lyrics: null,
  custom_special_handling: null
)
```

