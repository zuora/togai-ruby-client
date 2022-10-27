# -*- encoding: utf-8 -*-

=begin
#Togai Apis

#APIs for Togai App

The version of the OpenAPI document: 1.0
Contact: engg@togai.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "togai_client/version"

Gem::Specification.new do |s|
  s.name        = "togai_client"
  s.version     = TogaiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Togai Engineering"]
  s.email       = ["engg@togai.com"]
  s.homepage    = "https://github.com/TogaiHQ/togai-ruby-client"
  s.summary     = "Togai Apis Ruby Gem"
  s.description = "A ruby client library for the Togai APIs"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end