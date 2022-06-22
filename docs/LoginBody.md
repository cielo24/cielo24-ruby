# cielo24::LoginBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username associated with this account | [optional] |
| **password** | **String** | The password associated with this account | [optional] |
| **securekey** | **String** | A long term security key generated via generate_api_key | [optional] |

## Example

```ruby
require 'cielo24'

instance = cielo24::LoginBody.new(
  username: null,
  password: null,
  securekey: null
)
```

