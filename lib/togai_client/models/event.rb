=begin
#Togai Apis

#APIs for Togai App

The version of the OpenAPI document: 1.0
Contact: engg@togai.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module TogaiClient
  # Contents of the event
  class Event
    # Name of the event to be recorded.
    attr_accessor :event_name

    # A unique value to identify the event instance. This unique value should be generated by the client and it acts as the **idempotency key**. Togai server will use this key to recognize subsequent retries of the same request and avoid metering multiple times for that same request. This id can be created in any format but we recommend using UUIDv4 to reduce collision occurance.    NOTE1: Expiry time for idempotency validation will be until the end of the billing cycle. Any request which comes after the billing cycle with the same id will be treated as new request and ingested for metering.   NOTE2: If the billing cycle is not configured for the idempotency validation will be until **10 days** of the event ingestion.
    attr_accessor :id

    # Source time stamp of the event. This timestamp must be in ISO 8601 format.
    attr_accessor :event_timestamp

    attr_accessor :account_id

    attr_accessor :event_attributes

    # Dimensions are tags/labels associated with the events. This dimensions can be used to configure billing, for queries, analytics and reports.
    attr_accessor :dimensions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'event_name' => :'eventName',
        :'id' => :'id',
        :'event_timestamp' => :'eventTimestamp',
        :'account_id' => :'accountId',
        :'event_attributes' => :'eventAttributes',
        :'dimensions' => :'dimensions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'event_name' => :'String',
        :'id' => :'String',
        :'event_timestamp' => :'Time',
        :'account_id' => :'String',
        :'event_attributes' => :'Array<EventAttribute>',
        :'dimensions' => :'Hash<String, String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TogaiClient::Event` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TogaiClient::Event`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'event_name')
        self.event_name = attributes[:'event_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'event_timestamp')
        self.event_timestamp = attributes[:'event_timestamp']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'event_attributes')
        if (value = attributes[:'event_attributes']).is_a?(Array)
          self.event_attributes = value
        end
      end

      if attributes.key?(:'dimensions')
        if (value = attributes[:'dimensions']).is_a?(Hash)
          self.dimensions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @event_name.nil?
        invalid_properties.push('invalid value for "event_name", event_name cannot be nil.')
      end

      if @event_name.to_s.length > 255
        invalid_properties.push('invalid value for "event_name", the character length must be smaller than or equal to 255.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 255
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 255.')
      end

      if @event_timestamp.nil?
        invalid_properties.push('invalid value for "event_timestamp", event_timestamp cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_id.to_s.length > 255
        invalid_properties.push('invalid value for "account_id", the character length must be smaller than or equal to 255.')
      end

      if @event_attributes.nil?
        invalid_properties.push('invalid value for "event_attributes", event_attributes cannot be nil.')
      end

      if @event_attributes.length > 50
        invalid_properties.push('invalid value for "event_attributes", number of items must be less than or equal to 50.')
      end

      if @dimensions.nil?
        invalid_properties.push('invalid value for "dimensions", dimensions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @event_name.nil?
      return false if @event_name.to_s.length > 255
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @event_timestamp.nil?
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 255
      return false if @event_attributes.nil?
      return false if @event_attributes.length > 50
      return false if @dimensions.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] event_name Value to be assigned
    def event_name=(event_name)
      if event_name.nil?
        fail ArgumentError, 'event_name cannot be nil'
      end

      if event_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "event_name", the character length must be smaller than or equal to 255.'
      end

      @event_name = event_name
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 255
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 255.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      if account_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "account_id", the character length must be smaller than or equal to 255.'
      end

      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] event_attributes Value to be assigned
    def event_attributes=(event_attributes)
      if event_attributes.nil?
        fail ArgumentError, 'event_attributes cannot be nil'
      end

      if event_attributes.length > 50
        fail ArgumentError, 'invalid value for "event_attributes", number of items must be less than or equal to 50.'
      end

      @event_attributes = event_attributes
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_name == o.event_name &&
          id == o.id &&
          event_timestamp == o.event_timestamp &&
          account_id == o.account_id &&
          event_attributes == o.event_attributes &&
          dimensions == o.dimensions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [event_name, id, event_timestamp, account_id, event_attributes, dimensions].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
