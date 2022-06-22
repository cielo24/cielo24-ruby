=begin
#Cielo24

#The cielo24 Web Services Platform API allows developers to easily integrate transcription, captioning and keyword extraction into their applications without having to use a manual web portal.

The version of the OpenAPI document: 1.0.0
Contact: devs@cielo24.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module cielo24
  class PerformTranscriptionBody
    # The ID of the job
    attr_accessor :job_id

    # The desired fidelity of the transcription
    attr_accessor :transcription_fidelity

    # The desired priority of the transcription
    attr_accessor :priority

    # A URL with query string which will be called on completion. If submitting the callback_url as a query string parameter, rather than a value in the POST data, the callback_url should be URL encoded. The callback URL can contain tags that will be replaced with job specific data when the callback is called. Below is the list of tags that are supported: {job_id}, {job_name}, {elementlist_version}, {iwp_name} (The Interim Work Product name associated with this ElementList version)
    attr_accessor :callback_url

    # A job options json. See JobOptions object for details.
    attr_accessor :options

    # An RFC 5646 language code to translate this job into. If not specified, then no translation will be performed. If specified, but the language code specified matches the language code on the job request, then no translation will be performed.
    attr_accessor :target_language

    # The number of hours after submission that the job will be returned. If not specified, it will be set to a default based on the value of the priority parameter. The defaults are 24 and 48 for the PRIORITY and STANDARD priorities respectively. If you request a smaller number of hours than the default for the priority you have selected, the priority will be automatically changed. For example if you request a turnaround_hours of 16 with a priority of STANDARD, the priority will be automatically, and silently, changed to PRIORITY.
    attr_accessor :turnaround_hours

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
        :'job_id' => :'job_id',
        :'transcription_fidelity' => :'transcription_fidelity',
        :'priority' => :'priority',
        :'callback_url' => :'callback_url',
        :'options' => :'options',
        :'target_language' => :'target_language',
        :'turnaround_hours' => :'turnaround_hours'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'job_id' => :'String',
        :'transcription_fidelity' => :'String',
        :'priority' => :'String',
        :'callback_url' => :'String',
        :'options' => :'String',
        :'target_language' => :'String',
        :'turnaround_hours' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `cielo24::PerformTranscriptionBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `cielo24::PerformTranscriptionBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'job_id')
        self.job_id = attributes[:'job_id']
      end

      if attributes.key?(:'transcription_fidelity')
        self.transcription_fidelity = attributes[:'transcription_fidelity']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'target_language')
        self.target_language = attributes[:'target_language']
      end

      if attributes.key?(:'turnaround_hours')
        self.turnaround_hours = attributes[:'turnaround_hours']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @job_id.nil?
        invalid_properties.push('invalid value for "job_id", job_id cannot be nil.')
      end

      if @transcription_fidelity.nil?
        invalid_properties.push('invalid value for "transcription_fidelity", transcription_fidelity cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @job_id.nil?
      return false if @transcription_fidelity.nil?
      transcription_fidelity_validator = EnumAttributeValidator.new('String', ["MECHANICAL", "PREMIUM", "PROFESSIONAL"])
      return false unless transcription_fidelity_validator.valid?(@transcription_fidelity)
      return false if @priority.nil?
      priority_validator = EnumAttributeValidator.new('String', ["STANDARD", "PRIORITY"])
      return false unless priority_validator.valid?(@priority)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transcription_fidelity Object to be assigned
    def transcription_fidelity=(transcription_fidelity)
      validator = EnumAttributeValidator.new('String', ["MECHANICAL", "PREMIUM", "PROFESSIONAL"])
      unless validator.valid?(transcription_fidelity)
        fail ArgumentError, "invalid value for \"transcription_fidelity\", must be one of #{validator.allowable_values}."
      end
      @transcription_fidelity = transcription_fidelity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority Object to be assigned
    def priority=(priority)
      validator = EnumAttributeValidator.new('String', ["STANDARD", "PRIORITY"])
      unless validator.valid?(priority)
        fail ArgumentError, "invalid value for \"priority\", must be one of #{validator.allowable_values}."
      end
      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          job_id == o.job_id &&
          transcription_fidelity == o.transcription_fidelity &&
          priority == o.priority &&
          callback_url == o.callback_url &&
          options == o.options &&
          target_language == o.target_language &&
          turnaround_hours == o.turnaround_hours
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [job_id, transcription_fidelity, priority, callback_url, options, target_language, turnaround_hours].hash
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
        klass = cielo24.const_get(type)
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
