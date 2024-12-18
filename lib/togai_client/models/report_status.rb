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
  class ReportStatus
    QUEUED = "QUEUED".freeze
    RUNNING = "RUNNING".freeze
    FAILED = "FAILED".freeze
    UPLOAD_PENDING = "UPLOAD_PENDING".freeze
    COMPLETED = "COMPLETED".freeze

    def self.all_vars
      @all_vars ||= [QUEUED, RUNNING, FAILED, UPLOAD_PENDING, COMPLETED].freeze
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
      return value if ReportStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ReportStatus"
    end
  end
end
