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
  class MigrationMode
    IMMEDIATE = "IMMEDIATE".freeze
    IMMEDIATE_IGNORE_OVERRIDE = "IMMEDIATE_IGNORE_OVERRIDE".freeze
    NEXT_CYCLE = "NEXT_CYCLE".freeze
    NEXT_CYCLE_IGNORE_OVERRIDE = "NEXT_CYCLE_IGNORE_OVERRIDE".freeze
    NONE = "NONE".freeze
    START_OF_CURRENT_CYCLE = "START_OF_CURRENT_CYCLE".freeze

    def self.all_vars
      @all_vars ||= [IMMEDIATE, IMMEDIATE_IGNORE_OVERRIDE, NEXT_CYCLE, NEXT_CYCLE_IGNORE_OVERRIDE, NONE, START_OF_CURRENT_CYCLE].freeze
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
      return value if MigrationMode.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #MigrationMode"
    end
  end
end