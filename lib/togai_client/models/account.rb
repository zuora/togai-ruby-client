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
  # Structure of an account
  class Account
    # Identifier of the account
    attr_accessor :id

    # Unique identifier of the account
    attr_accessor :togai_account_id

    # Unique identifier of the customer
    attr_accessor :togai_customer_id

    # Name of the Account
    attr_accessor :name

    # Identifier of the customer
    attr_accessor :customer_id

    # [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217) code of the currency in which the account must be invoiced Defaults to Base currency. 
    attr_accessor :invoice_currency

    # list of aliases of the account
    attr_accessor :aliases

    attr_accessor :net_term_days

    attr_accessor :address

    # Primary email of the customer
    attr_accessor :primary_email

    attr_accessor :billing_information

    # Status of the account
    attr_accessor :status

    attr_accessor :settings

    attr_accessor :invoice_group_details

    # Additional information associated with the account. Example: GSTN, VATN 
    attr_accessor :metadata

    # Tag for accounts are stored in lowercase
    attr_accessor :tags

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
        :'togai_account_id' => :'togaiAccountId',
        :'togai_customer_id' => :'togaiCustomerId',
        :'name' => :'name',
        :'customer_id' => :'customerId',
        :'invoice_currency' => :'invoiceCurrency',
        :'aliases' => :'aliases',
        :'net_term_days' => :'netTermDays',
        :'address' => :'address',
        :'primary_email' => :'primaryEmail',
        :'billing_information' => :'billingInformation',
        :'status' => :'status',
        :'settings' => :'settings',
        :'invoice_group_details' => :'invoiceGroupDetails',
        :'metadata' => :'metadata',
        :'tags' => :'tags'
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
        :'togai_account_id' => :'String',
        :'togai_customer_id' => :'String',
        :'name' => :'String',
        :'customer_id' => :'String',
        :'invoice_currency' => :'String',
        :'aliases' => :'Array<AccountAliases>',
        :'net_term_days' => :'Integer',
        :'address' => :'Address',
        :'primary_email' => :'String',
        :'billing_information' => :'AccountsBillingInformation',
        :'status' => :'String',
        :'settings' => :'Array<CreateEntitySetting>',
        :'invoice_group_details' => :'InvoiceGroupDetails',
        :'metadata' => :'Hash<String, String>',
        :'tags' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TogaiClient::Account` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TogaiClient::Account`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'togai_account_id')
        self.togai_account_id = attributes[:'togai_account_id']
      else
        self.togai_account_id = nil
      end

      if attributes.key?(:'togai_customer_id')
        self.togai_customer_id = attributes[:'togai_customer_id']
      else
        self.togai_customer_id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      else
        self.customer_id = nil
      end

      if attributes.key?(:'invoice_currency')
        self.invoice_currency = attributes[:'invoice_currency']
      end

      if attributes.key?(:'aliases')
        if (value = attributes[:'aliases']).is_a?(Array)
          self.aliases = value
        end
      end

      if attributes.key?(:'net_term_days')
        self.net_term_days = attributes[:'net_term_days']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'primary_email')
        self.primary_email = attributes[:'primary_email']
      end

      if attributes.key?(:'billing_information')
        self.billing_information = attributes[:'billing_information']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'settings')
        if (value = attributes[:'settings']).is_a?(Array)
          self.settings = value
        end
      end

      if attributes.key?(:'invoice_group_details')
        self.invoice_group_details = attributes[:'invoice_group_details']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 50
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 50.')
      end

      if @togai_account_id.nil?
        invalid_properties.push('invalid value for "togai_account_id", togai_account_id cannot be nil.')
      end

      if @togai_customer_id.nil?
        invalid_properties.push('invalid value for "togai_customer_id", togai_customer_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if @name.to_s.length < 3
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 3.')
      end

      if @customer_id.nil?
        invalid_properties.push('invalid value for "customer_id", customer_id cannot be nil.')
      end

      if !@invoice_currency.nil? && @invoice_currency.to_s.length > 3
        invalid_properties.push('invalid value for "invoice_currency", the character length must be smaller than or equal to 3.')
      end

      if !@invoice_currency.nil? && @invoice_currency.to_s.length < 3
        invalid_properties.push('invalid value for "invoice_currency", the character length must be great than or equal to 3.')
      end

      if !@aliases.nil? && @aliases.length > 10
        invalid_properties.push('invalid value for "aliases", number of items must be less than or equal to 10.')
      end

      if !@aliases.nil? && @aliases.length < 0
        invalid_properties.push('invalid value for "aliases", number of items must be greater than or equal to 0.')
      end

      if !@primary_email.nil? && @primary_email.to_s.length > 320
        invalid_properties.push('invalid value for "primary_email", the character length must be smaller than or equal to 320.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if !@settings.nil? && @settings.length > 10
        invalid_properties.push('invalid value for "settings", number of items must be less than or equal to 10.')
      end

      if !@settings.nil? && @settings.length < 0
        invalid_properties.push('invalid value for "settings", number of items must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id.to_s.length > 50
      return false if @togai_account_id.nil?
      return false if @togai_customer_id.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 255
      return false if @name.to_s.length < 3
      return false if @customer_id.nil?
      return false if !@invoice_currency.nil? && @invoice_currency.to_s.length > 3
      return false if !@invoice_currency.nil? && @invoice_currency.to_s.length < 3
      return false if !@aliases.nil? && @aliases.length > 10
      return false if !@aliases.nil? && @aliases.length < 0
      return false if !@primary_email.nil? && @primary_email.to_s.length > 320
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "DRAFT", "ARCHIVED"])
      return false unless status_validator.valid?(@status)
      return false if !@settings.nil? && @settings.length > 10
      return false if !@settings.nil? && @settings.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 50
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 50.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      if name.to_s.length < 3
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 3.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_currency Value to be assigned
    def invoice_currency=(invoice_currency)
      if invoice_currency.nil?
        fail ArgumentError, 'invoice_currency cannot be nil'
      end

      if invoice_currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "invoice_currency", the character length must be smaller than or equal to 3.'
      end

      if invoice_currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "invoice_currency", the character length must be great than or equal to 3.'
      end

      @invoice_currency = invoice_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] aliases Value to be assigned
    def aliases=(aliases)
      if aliases.nil?
        fail ArgumentError, 'aliases cannot be nil'
      end

      if aliases.length > 10
        fail ArgumentError, 'invalid value for "aliases", number of items must be less than or equal to 10.'
      end

      if aliases.length < 0
        fail ArgumentError, 'invalid value for "aliases", number of items must be greater than or equal to 0.'
      end

      @aliases = aliases
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_email Value to be assigned
    def primary_email=(primary_email)
      if primary_email.nil?
        fail ArgumentError, 'primary_email cannot be nil'
      end

      if primary_email.to_s.length > 320
        fail ArgumentError, 'invalid value for "primary_email", the character length must be smaller than or equal to 320.'
      end

      @primary_email = primary_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "DRAFT", "ARCHIVED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] settings Value to be assigned
    def settings=(settings)
      if settings.nil?
        fail ArgumentError, 'settings cannot be nil'
      end

      if settings.length > 10
        fail ArgumentError, 'invalid value for "settings", number of items must be less than or equal to 10.'
      end

      if settings.length < 0
        fail ArgumentError, 'invalid value for "settings", number of items must be greater than or equal to 0.'
      end

      @settings = settings
    end

    # Custom attribute writer method with validation
    # @param [Object] tags Value to be assigned
    def tags=(tags)
      if tags.nil?
        fail ArgumentError, 'tags cannot be nil'
      end

      @tags = tags
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          togai_account_id == o.togai_account_id &&
          togai_customer_id == o.togai_customer_id &&
          name == o.name &&
          customer_id == o.customer_id &&
          invoice_currency == o.invoice_currency &&
          aliases == o.aliases &&
          net_term_days == o.net_term_days &&
          address == o.address &&
          primary_email == o.primary_email &&
          billing_information == o.billing_information &&
          status == o.status &&
          settings == o.settings &&
          invoice_group_details == o.invoice_group_details &&
          metadata == o.metadata &&
          tags == o.tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, togai_account_id, togai_customer_id, name, customer_id, invoice_currency, aliases, net_term_days, address, primary_email, billing_information, status, settings, invoice_group_details, metadata, tags].hash
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
