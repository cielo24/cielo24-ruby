# -*- encoding: utf-8 -*-

=begin
#Cielo24

#The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal.

The version of the OpenAPI document: 1.0.0
Contact: devs@cielo24.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "cielo24/version"

Gem::Specification.new do |s|
  s.name        = "cielo24"
  s.version     = cielo24::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["devs@cielo24.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Cielo24 Ruby Gem"
  s.description = "The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
