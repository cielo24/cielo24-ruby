# cielo24

cielo24 - the Ruby gem for the Cielo24

The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cielo24.gemspec
```

Then either install the gem locally:

```shell
gem install ./cielo24-1.0.0.gem
```

(for development, run `gem install --dev ./cielo24-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cielo24', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/cielo24/cielo24-python, then add the following in the Gemfile:

    gem 'cielo24', :git => 'https://github.com/cielo24/cielo24-python.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'cielo24'

# Setup authorization
cielo24.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = cielo24::AccountApi.new
v = 56 # Integer | 

begin
  result = api_instance.get_settings(v)
  p result
rescue cielo24::ApiError => e
  puts "Exception when calling AccountApi->get_settings: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.cielo24.com/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*cielo24::AccountApi* | [**get_settings**](docs/AccountApi.md#get_settings) | **GET** /account/get_settings | 
*cielo24::AccountApi* | [**login**](docs/AccountApi.md#login) | **POST** /account/login | 
*cielo24::AccountApi* | [**logout**](docs/AccountApi.md#logout) | **POST** /account/logout | 
*cielo24::AccountApi* | [**verify_key**](docs/AccountApi.md#verify_key) | **GET** /account/verify_key | 
*cielo24::JobApi* | [**add_media_file**](docs/JobApi.md#add_media_file) | **POST** /job/add_media | 
*cielo24::JobApi* | [**add_media_url**](docs/JobApi.md#add_media_url) | **GET** /job/add_media | 
*cielo24::JobApi* | [**authorize_job**](docs/JobApi.md#authorize_job) | **POST** /job/authorize | 
*cielo24::JobApi* | [**get_caption**](docs/JobApi.md#get_caption) | **GET** /job/get_caption | 
*cielo24::JobApi* | [**job_info**](docs/JobApi.md#job_info) | **GET** /job/info | 
*cielo24::JobApi* | [**new_job**](docs/JobApi.md#new_job) | **POST** /job/new | 
*cielo24::JobApi* | [**perform_transcription**](docs/JobApi.md#perform_transcription) | **POST** /job/perform_transcription | 
*cielo24::JobApi* | [**perform_translation**](docs/JobApi.md#perform_translation) | **POST** /job/perform_translation | 


## Documentation for Models

 - [cielo24::AddMediaResponse](docs/AddMediaResponse.md)
 - [cielo24::ErrorResponse](docs/ErrorResponse.md)
 - [cielo24::IWPEnum](docs/IWPEnum.md)
 - [cielo24::JobInfoResponse](docs/JobInfoResponse.md)
 - [cielo24::JobOptions](docs/JobOptions.md)
 - [cielo24::LoginBody](docs/LoginBody.md)
 - [cielo24::LoginResponse](docs/LoginResponse.md)
 - [cielo24::NewJobBody](docs/NewJobBody.md)
 - [cielo24::NewJobResponse](docs/NewJobResponse.md)
 - [cielo24::PerformTranscriptionBody](docs/PerformTranscriptionBody.md)
 - [cielo24::PerformTranscriptionResponse](docs/PerformTranscriptionResponse.md)
 - [cielo24::PerformTranslationResponse](docs/PerformTranslationResponse.md)
 - [cielo24::VerifyKeyResponse](docs/VerifyKeyResponse.md)


## Documentation for Authorization


### ApiKeyAuth


- **Type**: API key
- **API key parameter name**: api_token
- **Location**: URL query string

