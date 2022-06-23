# cielo24::JobApi

All URIs are relative to *https://api.cielo24.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_media_file**](JobApi.md#add_media_file) | **POST** /job/add_media |  |
| [**add_media_url**](JobApi.md#add_media_url) | **GET** /job/add_media |  |
| [**authorize_job**](JobApi.md#authorize_job) | **POST** /job/authorize |  |
| [**get_caption**](JobApi.md#get_caption) | **GET** /job/get_caption |  |
| [**job_info**](JobApi.md#job_info) | **GET** /job/info |  |
| [**new_job**](JobApi.md#new_job) | **POST** /job/new |  |
| [**perform_transcription**](JobApi.md#perform_transcription) | **POST** /job/perform_transcription |  |
| [**perform_translation**](JobApi.md#perform_translation) | **POST** /job/translate |  |


## add_media_file

> <AddMediaResponse> add_media_file(v, job_id, content_length, body, opts)



Add a piece of media to an existing job using a local file. No content-type should be included in the HTTP header. The media should be uploaded as raw binary, no encoding (base64, hex, etc) is required. Chunk-transfer encoding is NOT supported. File size is limited to 10 gb

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
job_id = '0fbd6015910e42dca25a863c4925d77c' # String | 
content_length = 56 # Integer | 
body = File.new('/path/to/some/file') # File | 
opts = {
  is_duplicate: 'true' # String | 
}

begin
  
  result = api_instance.add_media_file(v, job_id, content_length, body, opts)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->add_media_file: #{e}"
end
```

#### Using the add_media_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddMediaResponse>, Integer, Hash)> add_media_file_with_http_info(v, job_id, content_length, body, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_media_file_with_http_info(v, job_id, content_length, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddMediaResponse>
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->add_media_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **job_id** | **String** |  |  |
| **content_length** | **Integer** |  |  |
| **body** | **File** |  |  |
| **is_duplicate** | **String** |  | [optional][default to &#39;false&#39;] |

### Return type

[**AddMediaResponse**](AddMediaResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: video/mp4
- **Accept**: application/json


## add_media_url

> <AddMediaResponse> add_media_url(v, job_id, media_url, opts)



Add a piece of media to an existing job using a public media url. A job may only have a single piece of media associated with it, attempting to add additional media will return an error code.

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
job_id = '0fbd6015910e42dca25a863c4925d77c' # String | 
media_url = 'http://www.domain.com/video.mp4' # String | 
opts = {
  is_duplicate: 'true' # String | 
}

begin
  
  result = api_instance.add_media_url(v, job_id, media_url, opts)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->add_media_url: #{e}"
end
```

#### Using the add_media_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddMediaResponse>, Integer, Hash)> add_media_url_with_http_info(v, job_id, media_url, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_media_url_with_http_info(v, job_id, media_url, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddMediaResponse>
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->add_media_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **job_id** | **String** |  |  |
| **media_url** | **String** |  |  |
| **is_duplicate** | **String** |  | [optional][default to &#39;false&#39;] |

### Return type

[**AddMediaResponse**](AddMediaResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authorize_job

> authorize_job(v, job_id)



Authorize an existing job. If your account has the \"customer authorization\" feature enabled (it is not enabled by default) jobs you create will be held in the \"Authorizing\" state until you call this method. Calling this method on a job that is not the \"Authorizing\" state has no effect and will return success. Please contact support@cielo24.com to enable the \"customer authorization\" feature.

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
job_id = '0fbd6015910e42dca25a863c4925d77c' # String | 

begin
  
  api_instance.authorize_job(v, job_id)
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->authorize_job: #{e}"
end
```

#### Using the authorize_job_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_job_with_http_info(v, job_id)

```ruby
begin
  
  data, status_code, headers = api_instance.authorize_job_with_http_info(v, job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->authorize_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **job_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_caption

> String get_caption(v, job_id, caption_format, opts)



Get the caption file for a job. The job must have completed transcription before a caption can be downloaded.

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
job_id = '0fbd6015910e42dca25a863c4925d77c' # String | 
caption_format = 'DFXP' # String | 
opts = {
  build_url: 'true', # String | Rather than returning the file, return a permanent URL to the file.
  caption_words_min: 3, # Integer | Minimum number of words allowed in a caption.
  caption_by_sentence: 'true', # String | When true, puts each sentence into its own caption. When false, more than one sentence may appear in a single caption.
  characters_per_caption_line: 30, # Integer | Maximum number of characters to be displayed on each caption line.
  dfxp_header: '<head></head>', # String | Allows you to specify a custom header for your DFXP caption file. The header should be the entire contents of the header including the opening and closing tags. Ignored if caption_format does not equal DFXP.
  disallow_dangling: 'true', # String | Will prevent captions from having the last word in a sentence start a new line. Last words will ALWAYS be kept on the same line, even if it breaks the characters_per_caption_line option.
  display_effects_speaker_as: 'Sounds', # String | Determines what speaker name should used for sound effects.
  display_speaker_id: 'no', # String | Determines the way speakers are identified in the captions. Choose \"no\" to not display speaker identities at all: \">> example\" Choose \"number\" to display only the speaker number: \">> Speaker 1: example\" Choose \"name\" to display the speaker name: \">> John Doe: example\". If you choose \"name\", the speaker number will be displayed if the name is not available.
  iwp_name: 'PREMIUM', # String | The named version of element list to generate the transcript from. If not specified, the transcript will be generated from the latest version.
  elementlist_version: '2014-07-31T12:35:52.324389', # String | The version of element list to generate the captions from. If not specified, the caption will be generated from the latest version. (ISO 8601 Date String)
  emit_speaker_change_tokens_as: '-->', # String | Determine what characters to use to denote speaker changes.
  force_case: 'force_case_example', # String | Force the contents of the captions to be all UPPER or lower case. If blank, the case of the captions is not changed.
  include_dfxp_metadata: 'true', # String | When true, and the caption format requested is DFXP, the jobs name, ID and language will be added to the DFXP metadata header. When false, these data are omitted from the header. Ignored if caption_format does not equal DFXP.
  layout_target_caption_length_ms: 4000, # Integer | Captions generated will, on average, be this duration. However, they may vary significantly based on other parameters you set.
  line_break_on_sentence: 'true', # String | Inserts a line break in between sentences that are in the same caption.
  line_ending_format: 'UNIX', # String | Determine the end of line (EOL) character to use for the captions.
  lines_per_caption: 3, # Integer | Number of lines to be displayed for each caption.
  mask_profanity: 'true', # String | Replace profanity with asterisks.
  maximum_caption_duration: 10000, # Integer | No captions longer than this (in milliseconds) will be produced. If not specified, there is no maximum.
  merge_gap_interval: 1500, # Integer | Captions with a gap between them that is smaller than this (in milliseconds) will have their start and/or end times changed so there is no time gap between the captions.
  minimum_caption_length_ms: 1500, # Integer | Extends the duration of short captions to the this minimum length. Additional time is taken from later caption blocks to meet this minimum time.
  minimum_gap_between_captions_ms: 100, # Integer | Adds a minimum time between captions such as there will always be some time between captions where no text is displayed. When captions are very close together, time will be removed from the caption duration to make the gap.
  qt_seamless: 'true', # String | Does not put time gaps of any kind between caption blocks. Ignored if caption_format does not equal QT.
  remove_disfluencies: 'true', # String | Remove verbal disfluencies from the generated transcript. Common disfluencies such as \"um\" and \"ah\" are removed while maintaining appropriate punctuation.
  remove_sounds_list: ['UNKNOWN'], # Array<String> | A list of sounds to not show in the caption. This is a JSON style list, and should look like [\"MUSIC\", \"LAUGH\"]. Ignored if remove_sound_references is true.
  remove_sound_references: 'true', # String | Remove ALL non-verbal sound and noise references from the generated transcript. Sounds and unidentified noises are depicted in the caption as [SOUND], [COUGH] and [NOISE]. If this parameter is set, these identifiers are omitted from the caption.
  replace_slang: 'true', # String | Replace common slang terms from the generated transcript. Common replacements are \"want to\" for \"wanna\", \"going to\" for \"gonna\", etc.
  silence_max_ms: 1000, # Integer | If there is a interval of silence in the middle of a sentence longer than this, then the caption will be split.
  single_speaker_per_caption: 'true', # String | When true, puts each speaker into its own caption. When false, more than one speaker may appear in a single caption.
  sound_boundaries: ['inner_example'], # Array<String> | Specifies the characters to surround sound references with. The default will generate sound references that look like this: [MUSIC].
  sound_threshold: 5000, # Integer | Sound references that are longer than this threshold will be made their own caption entirely, and will not have any text included with them. If not set, Sound references will be included back to back with text no matter the duration of the sound.
  sound_tokens_by_caption: 'true', # String | If true, all sound references will always be in their own caption. If false, more than one sound reference may appear in a single caption.
  sound_tokens_by_line: 'true', # String | If true, all sound references will always be in their own line. If false, more than one sound reference may appear in a single line.
  sound_tokens_by_caption_list: ['UNKNOWN'], # Array<String> | If non-empty, the specified sound references will always be in their own caption. If empty, more than one sound reference may appear in a single caption. Ignored if sound_tokens_by_caption is true.
  sound_tokens_by_line_list: ['UNKNOWN'], # Array<String> | If non-empty, the specified sound references will always be in their own line. If empty, more than one sound reference may appear in a single line. Ignored if sound_tokens_by_line is true.
  speaker_on_new_line: 'true', # String | If true, a speaker change will cause a new caption to be made. If false, multiple speakers may appear in a single caption.
  srt_format: '{caption_number:d}\n{start_hour:02d}:{start_minute:02d}:{start_second:02d},{start_millisecond:03d} -->{end_hour:02d}:{end_minute:02d}:{end_second:02d},{end_millisecond:03d}\n{caption_text}\n\n', # String | If the caption format is SRT, determines what the caption blocks will look like. The default, prints caption blocks that look like this:    1:   00:00:06,060 --> 00:00:16,060   This is the caption text.  You can alter the caption block by re-arranging or removing the substitution string values, shown enclosed in braces \"{}\" in the default value below. Substitution strings may used more than once if desired. Any text that is not a substitution string will be displayed as written. To add new lines, include a \\n. Note, you may need to escape the \\n with an extra backslash when encoding the request. 
  strip_square_brackets: 'true', # String | Removes all square brackets like '[' or ']' from captions. By default square brackets surround sound references like '[MUSIC]', but they may exist as part of the caption text as well.
  utf8_mark: 'true', # String | Adds a utf8 bytemark to the beginning of the caption. This should only be used if the system you are loading the caption files into needs a byte marker. The vast majority of systems do not.
  replace_english_spelling: 'A' # String | Replaces English spelling with location accurate spelling. i.e. Color --> Colour  A: American  B: British  Z: British ize  U: Australian  C: Canadian 
}

begin
  
  result = api_instance.get_caption(v, job_id, caption_format, opts)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->get_caption: #{e}"
end
```

#### Using the get_caption_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_caption_with_http_info(v, job_id, caption_format, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_caption_with_http_info(v, job_id, caption_format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->get_caption_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **job_id** | **String** |  |  |
| **caption_format** | **String** |  |  |
| **build_url** | **String** | Rather than returning the file, return a permanent URL to the file. | [optional][default to &#39;false&#39;] |
| **caption_words_min** | **Integer** | Minimum number of words allowed in a caption. | [optional][default to 1] |
| **caption_by_sentence** | **String** | When true, puts each sentence into its own caption. When false, more than one sentence may appear in a single caption. | [optional][default to &#39;true&#39;] |
| **characters_per_caption_line** | **Integer** | Maximum number of characters to be displayed on each caption line. | [optional][default to 42] |
| **dfxp_header** | **String** | Allows you to specify a custom header for your DFXP caption file. The header should be the entire contents of the header including the opening and closing tags. Ignored if caption_format does not equal DFXP. | [optional][default to &#39;&#39;] |
| **disallow_dangling** | **String** | Will prevent captions from having the last word in a sentence start a new line. Last words will ALWAYS be kept on the same line, even if it breaks the characters_per_caption_line option. | [optional][default to &#39;false&#39;] |
| **display_effects_speaker_as** | **String** | Determines what speaker name should used for sound effects. | [optional][default to &#39;Effects&#39;] |
| **display_speaker_id** | **String** | Determines the way speakers are identified in the captions. Choose \&quot;no\&quot; to not display speaker identities at all: \&quot;&gt;&gt; example\&quot; Choose \&quot;number\&quot; to display only the speaker number: \&quot;&gt;&gt; Speaker 1: example\&quot; Choose \&quot;name\&quot; to display the speaker name: \&quot;&gt;&gt; John Doe: example\&quot;. If you choose \&quot;name\&quot;, the speaker number will be displayed if the name is not available. | [optional][default to &#39;name&#39;] |
| **iwp_name** | **String** | The named version of element list to generate the transcript from. If not specified, the transcript will be generated from the latest version. | [optional][default to &#39;&#39;] |
| **elementlist_version** | **String** | The version of element list to generate the captions from. If not specified, the caption will be generated from the latest version. (ISO 8601 Date String) | [optional][default to &#39;&#39;] |
| **emit_speaker_change_tokens_as** | **String** | Determine what characters to use to denote speaker changes. | [optional][default to &#39;&gt;&gt;&#39;] |
| **force_case** | **String** | Force the contents of the captions to be all UPPER or lower case. If blank, the case of the captions is not changed. | [optional][default to &#39;&#39;] |
| **include_dfxp_metadata** | **String** | When true, and the caption format requested is DFXP, the jobs name, ID and language will be added to the DFXP metadata header. When false, these data are omitted from the header. Ignored if caption_format does not equal DFXP. | [optional][default to &#39;true&#39;] |
| **layout_target_caption_length_ms** | **Integer** | Captions generated will, on average, be this duration. However, they may vary significantly based on other parameters you set. | [optional][default to 5000] |
| **line_break_on_sentence** | **String** | Inserts a line break in between sentences that are in the same caption. | [optional][default to &#39;false&#39;] |
| **line_ending_format** | **String** | Determine the end of line (EOL) character to use for the captions. | [optional][default to &#39;UNIX&#39;] |
| **lines_per_caption** | **Integer** | Number of lines to be displayed for each caption. | [optional][default to 2] |
| **mask_profanity** | **String** | Replace profanity with asterisks. | [optional][default to &#39;false&#39;] |
| **maximum_caption_duration** | **Integer** | No captions longer than this (in milliseconds) will be produced. If not specified, there is no maximum. | [optional] |
| **merge_gap_interval** | **Integer** | Captions with a gap between them that is smaller than this (in milliseconds) will have their start and/or end times changed so there is no time gap between the captions. | [optional][default to 1000] |
| **minimum_caption_length_ms** | **Integer** | Extends the duration of short captions to the this minimum length. Additional time is taken from later caption blocks to meet this minimum time. | [optional] |
| **minimum_gap_between_captions_ms** | **Integer** | Adds a minimum time between captions such as there will always be some time between captions where no text is displayed. When captions are very close together, time will be removed from the caption duration to make the gap. | [optional] |
| **qt_seamless** | **String** | Does not put time gaps of any kind between caption blocks. Ignored if caption_format does not equal QT. | [optional][default to &#39;false&#39;] |
| **remove_disfluencies** | **String** | Remove verbal disfluencies from the generated transcript. Common disfluencies such as \&quot;um\&quot; and \&quot;ah\&quot; are removed while maintaining appropriate punctuation. | [optional][default to &#39;true&#39;] |
| **remove_sounds_list** | [**Array&lt;String&gt;**](String.md) | A list of sounds to not show in the caption. This is a JSON style list, and should look like [\&quot;MUSIC\&quot;, \&quot;LAUGH\&quot;]. Ignored if remove_sound_references is true. | [optional] |
| **remove_sound_references** | **String** | Remove ALL non-verbal sound and noise references from the generated transcript. Sounds and unidentified noises are depicted in the caption as [SOUND], [COUGH] and [NOISE]. If this parameter is set, these identifiers are omitted from the caption. | [optional][default to &#39;true&#39;] |
| **replace_slang** | **String** | Replace common slang terms from the generated transcript. Common replacements are \&quot;want to\&quot; for \&quot;wanna\&quot;, \&quot;going to\&quot; for \&quot;gonna\&quot;, etc. | [optional][default to &#39;false&#39;] |
| **silence_max_ms** | **Integer** | If there is a interval of silence in the middle of a sentence longer than this, then the caption will be split. | [optional][default to 2000] |
| **single_speaker_per_caption** | **String** | When true, puts each speaker into its own caption. When false, more than one speaker may appear in a single caption. | [optional][default to &#39;true&#39;] |
| **sound_boundaries** | [**Array&lt;String&gt;**](String.md) | Specifies the characters to surround sound references with. The default will generate sound references that look like this: [MUSIC]. | [optional] |
| **sound_threshold** | **Integer** | Sound references that are longer than this threshold will be made their own caption entirely, and will not have any text included with them. If not set, Sound references will be included back to back with text no matter the duration of the sound. | [optional] |
| **sound_tokens_by_caption** | **String** | If true, all sound references will always be in their own caption. If false, more than one sound reference may appear in a single caption. | [optional][default to &#39;false&#39;] |
| **sound_tokens_by_line** | **String** | If true, all sound references will always be in their own line. If false, more than one sound reference may appear in a single line. | [optional][default to &#39;false&#39;] |
| **sound_tokens_by_caption_list** | [**Array&lt;String&gt;**](String.md) | If non-empty, the specified sound references will always be in their own caption. If empty, more than one sound reference may appear in a single caption. Ignored if sound_tokens_by_caption is true. | [optional] |
| **sound_tokens_by_line_list** | [**Array&lt;String&gt;**](String.md) | If non-empty, the specified sound references will always be in their own line. If empty, more than one sound reference may appear in a single line. Ignored if sound_tokens_by_line is true. | [optional] |
| **speaker_on_new_line** | **String** | If true, a speaker change will cause a new caption to be made. If false, multiple speakers may appear in a single caption. | [optional][default to &#39;true&#39;] |
| **srt_format** | **String** | If the caption format is SRT, determines what the caption blocks will look like. The default, prints caption blocks that look like this:    1:   00:00:06,060 --&gt; 00:00:16,060   This is the caption text.  You can alter the caption block by re-arranging or removing the substitution string values, shown enclosed in braces \&quot;{}\&quot; in the default value below. Substitution strings may used more than once if desired. Any text that is not a substitution string will be displayed as written. To add new lines, include a \\n. Note, you may need to escape the \\n with an extra backslash when encoding the request.  | [optional][default to &#39;{caption_number:d}\\n{start_hour:02d}:{start_minute:02d}:{start_second:02d},{start_millisecond:03d} --&gt;{end_hour:02d}:{end_minute:02d}:{end_second:02d},{end_millisecond:03d}\\n{caption_text}\\n\\n&#39;] |
| **strip_square_brackets** | **String** | Removes all square brackets like &#39;[&#39; or &#39;]&#39; from captions. By default square brackets surround sound references like &#39;[MUSIC]&#39;, but they may exist as part of the caption text as well. | [optional][default to &#39;false&#39;] |
| **utf8_mark** | **String** | Adds a utf8 bytemark to the beginning of the caption. This should only be used if the system you are loading the caption files into needs a byte marker. The vast majority of systems do not. | [optional][default to &#39;false&#39;] |
| **replace_english_spelling** | **String** | Replaces English spelling with location accurate spelling. i.e. Color --&gt; Colour  A: American  B: British  Z: British ize  U: Australian  C: Canadian  | [optional][default to &#39;A&#39;] |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## job_info

> <JobInfoResponse> job_info(v, job_id)



### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
job_id = '0fbd6015910e42dca25a863c4925d77c' # String | 

begin
  
  result = api_instance.job_info(v, job_id)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->job_info: #{e}"
end
```

#### Using the job_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobInfoResponse>, Integer, Hash)> job_info_with_http_info(v, job_id)

```ruby
begin
  
  data, status_code, headers = api_instance.job_info_with_http_info(v, job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobInfoResponse>
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->job_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **job_id** | **String** |  |  |

### Return type

[**JobInfoResponse**](JobInfoResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## new_job

> <NewJobResponse> new_job(v, new_job_body)



Create a new job. A job is a container into which you can upload media and request that transcription be performed. Creating a job is prerequisite for virtually all other methods.

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
new_job_body = cielo24::NewJobBody.new # NewJobBody | 

begin
  
  result = api_instance.new_job(v, new_job_body)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->new_job: #{e}"
end
```

#### Using the new_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewJobResponse>, Integer, Hash)> new_job_with_http_info(v, new_job_body)

```ruby
begin
  
  data, status_code, headers = api_instance.new_job_with_http_info(v, new_job_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewJobResponse>
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->new_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **new_job_body** | [**NewJobBody**](NewJobBody.md) |  |  |

### Return type

[**NewJobResponse**](NewJobResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## perform_transcription

> <PerformTranscriptionResponse> perform_transcription(v, perform_transcription_body)



Request that transcription be performed on the specified job. A callback URL, if specified, will be called when the transcription is complete. See [callback documentation](https://cielo24.readthedocs.io/en/latest/basics.html#callbacks-label) for details.

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
perform_transcription_body = cielo24::PerformTranscriptionBody.new({job_id: '0fbd6015910e42dca25a863c4925d77c', transcription_fidelity: 'MECHANICAL', priority: 'STANDARD'}) # PerformTranscriptionBody | 

begin
  
  result = api_instance.perform_transcription(v, perform_transcription_body)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->perform_transcription: #{e}"
end
```

#### Using the perform_transcription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PerformTranscriptionResponse>, Integer, Hash)> perform_transcription_with_http_info(v, perform_transcription_body)

```ruby
begin
  
  data, status_code, headers = api_instance.perform_transcription_with_http_info(v, perform_transcription_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PerformTranscriptionResponse>
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->perform_transcription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **perform_transcription_body** | [**PerformTranscriptionBody**](PerformTranscriptionBody.md) |  |  |

### Return type

[**PerformTranscriptionResponse**](PerformTranscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## perform_translation

> <PerformTranslationResponse> perform_translation(v, job_id, target_languages, opts)



Request that orders a new Translation language for a video that has been previously Transcribed and/or Translated. The New Job ID and job target language will be returned upon completion.

### Examples

```ruby
require 'time'
require 'cielo24'
# setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::JobApi.new
v = 56 # Integer | 
job_id = '0fbd6015910e42dca25a863c4925d77c' # String | 
target_languages = 'fr,de' # String | The language(s) being ordered (Any RFC 5646 language code) separated by comma (,)
opts = {
  approve_uplevel: 'true' # String | 
}

begin
  
  result = api_instance.perform_translation(v, job_id, target_languages, opts)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->perform_translation: #{e}"
end
```

#### Using the perform_translation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PerformTranslationResponse>, Integer, Hash)> perform_translation_with_http_info(v, job_id, target_languages, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.perform_translation_with_http_info(v, job_id, target_languages, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PerformTranslationResponse>
rescue cielo24::ApiError => e
  puts "Error when calling JobApi->perform_translation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **job_id** | **String** |  |  |
| **target_languages** | **String** | The language(s) being ordered (Any RFC 5646 language code) separated by comma (,) |  |
| **approve_uplevel** | **String** |  | [optional] |

### Return type

[**PerformTranslationResponse**](PerformTranslationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

