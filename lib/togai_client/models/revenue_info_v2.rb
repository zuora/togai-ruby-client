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
  class RevenueInfoV2
    attr_accessor :rate_card

    attr_accessor :usages

    attr_accessor :fixed_fee_revenue_summary

    attr_accessor :license_revenue_summary

    attr_accessor :billing_entitlement_revenue_summary

    attr_accessor :credit_grant_revenue_summary

    attr_accessor :entitlement_overage_revenue_summary

    attr_accessor :slab_revenue_summaries

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'rate_card' => :'rateCard',
        :'usages' => :'usages',
        :'fixed_fee_revenue_summary' => :'fixedFeeRevenueSummary',
        :'license_revenue_summary' => :'licenseRevenueSummary',
        :'billing_entitlement_revenue_summary' => :'billingEntitlementRevenueSummary',
        :'credit_grant_revenue_summary' => :'creditGrantRevenueSummary',
        :'entitlement_overage_revenue_summary' => :'entitlementOverageRevenueSummary',
        :'slab_revenue_summaries' => :'slabRevenueSummaries'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'rate_card' => :'RateCard',
        :'usages' => :'Hash<String, Float>',
        :'fixed_fee_revenue_summary' => :'FixedFeeRevenueSummary',
        :'license_revenue_summary' => :'Array<SlabRevenueSummary>',
        :'billing_entitlement_revenue_summary' => :'BillingEntitlementRevenueSummary',
        :'credit_grant_revenue_summary' => :'CreditGrantRevenueSummary',
        :'entitlement_overage_revenue_summary' => :'EntitlementOverageRevenueSummary',
        :'slab_revenue_summaries' => :'Array<SlabRevenueSummary>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TogaiClient::RevenueInfoV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TogaiClient::RevenueInfoV2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'rate_card')
        self.rate_card = attributes[:'rate_card']
      else
        self.rate_card = nil
      end

      if attributes.key?(:'usages')
        if (value = attributes[:'usages']).is_a?(Hash)
          self.usages = value
        end
      else
        self.usages = nil
      end

      if attributes.key?(:'fixed_fee_revenue_summary')
        self.fixed_fee_revenue_summary = attributes[:'fixed_fee_revenue_summary']
      end

      if attributes.key?(:'license_revenue_summary')
        if (value = attributes[:'license_revenue_summary']).is_a?(Array)
          self.license_revenue_summary = value
        end
      end

      if attributes.key?(:'billing_entitlement_revenue_summary')
        self.billing_entitlement_revenue_summary = attributes[:'billing_entitlement_revenue_summary']
      end

      if attributes.key?(:'credit_grant_revenue_summary')
        self.credit_grant_revenue_summary = attributes[:'credit_grant_revenue_summary']
      end

      if attributes.key?(:'entitlement_overage_revenue_summary')
        self.entitlement_overage_revenue_summary = attributes[:'entitlement_overage_revenue_summary']
      end

      if attributes.key?(:'slab_revenue_summaries')
        if (value = attributes[:'slab_revenue_summaries']).is_a?(Array)
          self.slab_revenue_summaries = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @rate_card.nil?
        invalid_properties.push('invalid value for "rate_card", rate_card cannot be nil.')
      end

      if @usages.nil?
        invalid_properties.push('invalid value for "usages", usages cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @rate_card.nil?
      return false if @usages.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          rate_card == o.rate_card &&
          usages == o.usages &&
          fixed_fee_revenue_summary == o.fixed_fee_revenue_summary &&
          license_revenue_summary == o.license_revenue_summary &&
          billing_entitlement_revenue_summary == o.billing_entitlement_revenue_summary &&
          credit_grant_revenue_summary == o.credit_grant_revenue_summary &&
          entitlement_overage_revenue_summary == o.entitlement_overage_revenue_summary &&
          slab_revenue_summaries == o.slab_revenue_summaries
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [rate_card, usages, fixed_fee_revenue_summary, license_revenue_summary, billing_entitlement_revenue_summary, credit_grant_revenue_summary, entitlement_overage_revenue_summary, slab_revenue_summaries].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = TogaiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
