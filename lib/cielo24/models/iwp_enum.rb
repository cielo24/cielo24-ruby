=begin
#Cielo24

#The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal.

The version of the OpenAPI document: 1.0.0
Contact: devs@cielo24.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module cielo24
  class IWPEnum
    PREMIUM = "PREMIUM".freeze
    INTERIM_PROFESSIONAL = "INTERIM_PROFESSIONAL".freeze
    PROFESSIONAL = "PROFESSIONAL".freeze
    SPEAKER_ID = "SPEAKER_ID".freeze
    FINAL = "FINAL".freeze
    MECHANICAL = "MECHANICAL".freeze
    CUSTOMER_APPROVED_RETURN = "CUSTOMER_APPROVED_RETURN".freeze
    CUSTOMER_APPROVED_TRANSLATION = "CUSTOMER_APPROVED_TRANSLATION".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = IWPEnum.constants.select { |c| IWPEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #IWPEnum" if constantValues.empty?
      value
    end
  end
end
