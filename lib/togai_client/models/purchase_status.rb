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
  class PurchaseStatus
    SUCCESS = "SUCCESS".freeze
    FAILURE = "FAILURE".freeze
    PENDING = "PENDING".freeze
    IN_PROGRESS = "IN_PROGRESS".freeze
    PROPOSAL_ACTIVE = "PROPOSAL_ACTIVE".freeze
    PROPOSAL_APPROVED = "PROPOSAL_APPROVED".freeze
    PROPOSAL_DECLINED = "PROPOSAL_DECLINED".freeze
    PROPOSAL_EXPIRED = "PROPOSAL_EXPIRED".freeze

    def self.all_vars
      @all_vars ||= [SUCCESS, FAILURE, PENDING, IN_PROGRESS, PROPOSAL_ACTIVE, PROPOSAL_APPROVED, PROPOSAL_DECLINED, PROPOSAL_EXPIRED].freeze
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
      return value if PurchaseStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PurchaseStatus"
    end
  end
end