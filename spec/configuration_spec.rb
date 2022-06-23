=begin
#Cielo24

#The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal.

The version of the OpenAPI document: 1.0.0
Contact: devs@cielo24.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'spec_helper'

describe cielo24::Configuration do
  let(:config) { cielo24::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.cielo24.com/api")
    # cielo24.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.cielo24.com/api")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.cielo24.com/api")
      end
    end
  end
end