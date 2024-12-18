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
  class InvoiceLineItem
    attr_accessor :id

    attr_accessor :description

    # Type of the line item - GRAND_TOTAL_AMOUNT: Sum of all total amount of individual invoices in a grouped(composite) invoice - TOTAL_AMOUNT: Total revenue of the invoice - NET_AMOUNT: Net revenue of the invoice ( Gross revenue - Discounts ) - GROSS_AMOUNT: Gross revenue of the invoice  - PRICE_PLAN_AMOUNT: SUB_TOTAL_AMOUNT + true up amount - SUB_TOTAL_AMOUNT: Sum of all rate card revenues - TRUE_UP_AMOUNT: Minimum commitment - SUB_TOTAL_AMOUNT (Always positive) - TOTAL_USAGE: List of all the usage meter usages - USAGE_METER_USAGE: Usage of an usage meter - USAGE_RATE_CARD_AMOUNT: Revenue generated from usage rate card - USAGE_RATE_CARD_SLAB_AMOUNT: Revenue generated from usage rate card slab - FIXED_FEE_RATE_CARD_AMOUNT: Revenue generated from fixed fee rate card - CREDIT_GRANT_RATE_CARD_AMOUNT: : Revenue generated from credit grant rate card - BILLING_ENTITLEMENT_RATE_CARD_AMOUNT: Revenue generated from billing entitlement rate card - ENTITLEMENT_OVERAGE_RATE_CARD_AMOUNT: : Revenue generated from entitlement overage rate card - ENTITLEMENT_OVERAGE_RATE_CARD_SLAB_AMOUNT: Revenue generated from entitlement overage rate card slab - LICENSE_RATE_CARD_AMOUNT: Revenue generated from license rate card - TOTAL_CREDITS: Sum of all credit amounts - SUB_CREDITS: Granted credit value - TOTAL_ADVANCED_FEES: Sum of all advanced fee revenue - ADVANCED_FIXED_FEE: Revenue generated from advanced fixed fee rate card - ADVANCED_LICENSE_RATE_CARD_AMOUNT: Revenue generated from advanced license rate card - ADVANCED_BILLING_ENTITLEMENT_RATE_CARD_AMOUNT: Revenue generated from advanced billing entitlement rate card - ADVANCED_CREDIT_GRANT_RATE_CARD_AMOUNT: Revenue generated from advanced credit grant rate card - TOTAL_MISCELLANEOUS_CHARGES: Net revenue of all MISCELLANEOUS_CHARGE - MISCELLANEOUS_CHARGE: Custom amount added to a DRAFT invoice - TOTAL_PURCHASE_AMOUNT: Net revenue all rate cards in a purchase plan - CUSTOM_AMOUNT: Custom amount added a DRAFT invoice - CUSTOM_TAG: User defined tags given to each rate card - TOTAL_PRICING_RULE_ADDITION_AMOUNT: Sum of all line items added by applying pricing rules - PRICING_RULE_ADDITION_AMOUNT: Amount added to invoice as a result of applying a pricing rule - PRICING_RULE_REVENUE_UPDATE_AMOUNT: Difference in revenue(value) obtained as a result of applying a pricing rule - PRICING_RULE_USAGE_UPDATE_AMOUNT: Difference in usage(quantity) obtained as a result of applying a pricing rule - RATE_CONFIG_ADJUSTMENT_AMOUNT: Difference in revenue obtained as a result of applying rate config['minimumRate', 'maximumRate'] at rate card level 
    attr_accessor :type

    attr_accessor :value_per_quantity

    attr_accessor :quantity

    attr_accessor :units

    attr_accessor :value

    attr_accessor :metadata

    attr_accessor :line_items

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'description' => :'description',
        :'type' => :'type',
        :'value_per_quantity' => :'valuePerQuantity',
        :'quantity' => :'quantity',
        :'units' => :'units',
        :'value' => :'value',
        :'metadata' => :'metadata',
        :'line_items' => :'lineItems'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'description' => :'String',
        :'type' => :'String',
        :'value_per_quantity' => :'Float',
        :'quantity' => :'Float',
        :'units' => :'String',
        :'value' => :'Float',
        :'metadata' => :'Hash<String, Object>',
        :'line_items' => :'Array<InvoiceLineItem>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TogaiClient::InvoiceLineItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TogaiClient::InvoiceLineItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'value_per_quantity')
        self.value_per_quantity = attributes[:'value_per_quantity']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      else
        self.value = nil
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      else
        self.line_items = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if @line_items.length > 50
        invalid_properties.push('invalid value for "line_items", number of items must be less than or equal to 50.')
      end

      if @line_items.length < 1
        invalid_properties.push('invalid value for "line_items", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @description.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["TOTAL_USAGE", "USAGE_METER_USAGE", "GRAND_TOTAL_AMOUNT", "TOTAL_AMOUNT", "NET_AMOUNT", "GROSS_AMOUNT", "SUB_TOTAL_AMOUNT", "PRICE_PLAN_AMOUNT", "FIXED_FEE_RATE_CARD_AMOUNT", "CREDIT_GRANT_RATE_CARD_AMOUNT", "BILLING_ENTITLEMENT_RATE_CARD_AMOUNT", "ENTITLEMENT_OVERAGE_RATE_CARD_AMOUNT", "ENTITLEMENT_OVERAGE_RATE_CARD_SLAB_AMOUNT", "LICENSE_RATE_CARD_AMOUNT", "USAGE_CYCLE_AMOUNT", "LICENSE_RATE_CARD_SLAB_AMOUNT", "USAGE_RATE_CARD_AMOUNT", "USAGE_RATE_CARD_SLAB_AMOUNT", "TOTAL_CREDITS", "SUB_CREDITS", "TOTAL_ADVANCED_FEES", "ADVANCED_FIXED_FEE", "ADVANCED_LICENSE_RATE_CARD_AMOUNT", "ADVANCED_BILLING_ENTITLEMENT_RATE_CARD_AMOUNT", "ADVANCED_CREDIT_GRANT_RATE_CARD_AMOUNT", "TOTAL_MISCELLANEOUS_CHARGES", "MISCELLANEOUS_CHARGE", "TRUE_UP_AMOUNT", "TOTAL_PURCHASE_AMOUNT", "CUSTOM_AMOUNT", "CUSTOM_TAG", "TOTAL_PRICING_RULE_ADDITION_AMOUNT", "PRICING_RULE_ADDITION_AMOUNT", "PRICING_RULE_REVENUE_UPDATE_AMOUNT", "PRICING_RULE_USAGE_UPDATE_AMOUNT", "RATE_CONFIG_ADJUSTMENT_AMOUNT", "TOTAL_TAX_AMOUNT", "TAX_AMOUNT", "PROXY_AMOUNT"])
      return false unless type_validator.valid?(@type)
      return false if @value.nil?
      return false if @line_items.nil?
      return false if @line_items.length > 50
      return false if @line_items.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["TOTAL_USAGE", "USAGE_METER_USAGE", "GRAND_TOTAL_AMOUNT", "TOTAL_AMOUNT", "NET_AMOUNT", "GROSS_AMOUNT", "SUB_TOTAL_AMOUNT", "PRICE_PLAN_AMOUNT", "FIXED_FEE_RATE_CARD_AMOUNT", "CREDIT_GRANT_RATE_CARD_AMOUNT", "BILLING_ENTITLEMENT_RATE_CARD_AMOUNT", "ENTITLEMENT_OVERAGE_RATE_CARD_AMOUNT", "ENTITLEMENT_OVERAGE_RATE_CARD_SLAB_AMOUNT", "LICENSE_RATE_CARD_AMOUNT", "USAGE_CYCLE_AMOUNT", "LICENSE_RATE_CARD_SLAB_AMOUNT", "USAGE_RATE_CARD_AMOUNT", "USAGE_RATE_CARD_SLAB_AMOUNT", "TOTAL_CREDITS", "SUB_CREDITS", "TOTAL_ADVANCED_FEES", "ADVANCED_FIXED_FEE", "ADVANCED_LICENSE_RATE_CARD_AMOUNT", "ADVANCED_BILLING_ENTITLEMENT_RATE_CARD_AMOUNT", "ADVANCED_CREDIT_GRANT_RATE_CARD_AMOUNT", "TOTAL_MISCELLANEOUS_CHARGES", "MISCELLANEOUS_CHARGE", "TRUE_UP_AMOUNT", "TOTAL_PURCHASE_AMOUNT", "CUSTOM_AMOUNT", "CUSTOM_TAG", "TOTAL_PRICING_RULE_ADDITION_AMOUNT", "PRICING_RULE_ADDITION_AMOUNT", "PRICING_RULE_REVENUE_UPDATE_AMOUNT", "PRICING_RULE_USAGE_UPDATE_AMOUNT", "RATE_CONFIG_ADJUSTMENT_AMOUNT", "TOTAL_TAX_AMOUNT", "TAX_AMOUNT", "PROXY_AMOUNT"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] line_items Value to be assigned
    def line_items=(line_items)
      if line_items.nil?
        fail ArgumentError, 'line_items cannot be nil'
      end

      if line_items.length > 50
        fail ArgumentError, 'invalid value for "line_items", number of items must be less than or equal to 50.'
      end

      if line_items.length < 1
        fail ArgumentError, 'invalid value for "line_items", number of items must be greater than or equal to 1.'
      end

      @line_items = line_items
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          description == o.description &&
          type == o.type &&
          value_per_quantity == o.value_per_quantity &&
          quantity == o.quantity &&
          units == o.units &&
          value == o.value &&
          metadata == o.metadata &&
          line_items == o.line_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, description, type, value_per_quantity, quantity, units, value, metadata, line_items].hash
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
