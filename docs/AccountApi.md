# cielo24::AccountApi

All URIs are relative to *https://api.cielo24.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_settings**](AccountApi.md#get_settings) | **GET** /account/get_settings |  |
| [**login**](AccountApi.md#login) | **POST** /account/login |  |
| [**logout**](AccountApi.md#logout) | **POST** /account/logout |  |
| [**verify_key**](AccountApi.md#verify_key) | **GET** /account/verify_key |  |


## get_settings

> Object get_settings(v)



Get Account Settings

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

api_instance = cielo24::AccountApi.new
v = 56 # Integer | 

begin
  
  result = api_instance.get_settings(v)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_settings_with_http_info(v)

```ruby
begin
  
  data, status_code, headers = api_instance.get_settings_with_http_info(v)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login

> <LoginResponse> login(v, login_body)



Login to the cielo24 API to obtain an API access token for use when calling other methods. Optional arguments may be passed either as HTTP headers or query string parameters. Required arguments must be passed as query string parameters.

### Examples

```ruby
require 'time'
require 'cielo24'

api_instance = cielo24::AccountApi.new
v = 56 # Integer | 
login_body = cielo24::LoginBody.new # LoginBody | 

begin
  
  result = api_instance.login(v, login_body)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginResponse>, Integer, Hash)> login_with_http_info(v, login_body)

```ruby
begin
  
  data, status_code, headers = api_instance.login_with_http_info(v, login_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginResponse>
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |
| **login_body** | [**LoginBody**](LoginBody.md) |  |  |

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## logout

> logout(v)



Logout of the current session, invalidating the API token.

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

api_instance = cielo24::AccountApi.new
v = 56 # Integer | 

begin
  
  api_instance.logout(v)
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info(v)

```ruby
begin
  
  data, status_code, headers = api_instance.logout_with_http_info(v)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->logout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_key

> <VerifyKeyResponse> verify_key(v)



Test Auth

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

api_instance = cielo24::AccountApi.new
v = 56 # Integer | 

begin
  
  result = api_instance.verify_key(v)
  p result
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->verify_key: #{e}"
end
```

#### Using the verify_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyKeyResponse>, Integer, Hash)> verify_key_with_http_info(v)

```ruby
begin
  
  data, status_code, headers = api_instance.verify_key_with_http_info(v)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyKeyResponse>
rescue cielo24::ApiError => e
  puts "Error when calling AccountApi->verify_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v** | **Integer** |  | [default to 1] |

### Return type

[**VerifyKeyResponse**](VerifyKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

