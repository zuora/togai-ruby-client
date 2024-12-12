=begin
#Togai Apis

#APIs for Togai App

The version of the OpenAPI document: 1.0
Contact: engg@togai.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module TogaiClient
  class PricingRuleTiming
    IN_ADVANCE = "IN_ADVANCE".freeze
    IN_ARREARS = "IN_ARREARS".freeze

    def self.all_vars
      @all_vars ||= [IN_ADVANCE, IN_ARREARS].freeze
    end

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
      return value if PricingRuleTiming.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PricingRuleTiming"
    end
  end
end