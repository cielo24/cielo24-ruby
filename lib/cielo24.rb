=begin
#Cielo24

#The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal.

The version of the OpenAPI document: 1.0.0
Contact: devs@cielo24.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

# Common files
require 'cielo24/api_client'
require 'cielo24/api_error'
require 'cielo24/version'
require 'cielo24/configuration'

# Models
require 'cielo24/models/add_media_response'
require 'cielo24/models/error_response'
require 'cielo24/models/iwp_enum'
require 'cielo24/models/job_info_response'
require 'cielo24/models/job_options'
require 'cielo24/models/login_body'
require 'cielo24/models/login_response'
require 'cielo24/models/new_job_body'
require 'cielo24/models/new_job_response'
require 'cielo24/models/perform_transcription_body'
require 'cielo24/models/perform_transcription_response'
require 'cielo24/models/perform_translation_response'
require 'cielo24/models/verify_key_response'

# APIs
require 'cielo24/api/account_api'
require 'cielo24/api/job_api'

module cielo24
  class << self
    # Customize default settings for the SDK using block.
    #   cielo24.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end