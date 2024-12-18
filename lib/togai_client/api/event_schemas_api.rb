=begin
#Togai Apis

#APIs for Togai App

The version of the OpenAPI document: 1.0
Contact: engg@togai.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module TogaiClient
  class EventSchemasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate an event schema
    # Activate an event schema
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [EventSchema]
    def activate_event_schema(event_schema_name, opts = {})
      data, _status_code, _headers = activate_event_schema_with_http_info(event_schema_name, opts)
      data
    end

    # Activate an event schema
    # Activate an event schema
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventSchema, Integer, Hash)>] EventSchema data, response status code and response headers
    def activate_event_schema_with_http_info(event_schema_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.activate_event_schema ...'
      end
      # verify the required parameter 'event_schema_name' is set
      if @api_client.config.client_side_validation && event_schema_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_schema_name' when calling EventSchemasApi.activate_event_schema"
      end
      if @api_client.config.client_side_validation && event_schema_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "event_schema_name" when calling EventSchemasApi.activate_event_schema, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/event_schema/{event_schema_name}/activate'.sub('{' + 'event_schema_name' + '}', CGI.escape(event_schema_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchema'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.activate_event_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#activate_event_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an event schema
    # Create an event schema with attributes and dimensions to process events.
    # @param create_event_schema_request [CreateEventSchemaRequest] Payload to create event schema
    # @param [Hash] opts the optional parameters
    # @return [EventSchema]
    def create_event_schema(create_event_schema_request, opts = {})
      data, _status_code, _headers = create_event_schema_with_http_info(create_event_schema_request, opts)
      data
    end

    # Create an event schema
    # Create an event schema with attributes and dimensions to process events.
    # @param create_event_schema_request [CreateEventSchemaRequest] Payload to create event schema
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventSchema, Integer, Hash)>] EventSchema data, response status code and response headers
    def create_event_schema_with_http_info(create_event_schema_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.create_event_schema ...'
      end
      # verify the required parameter 'create_event_schema_request' is set
      if @api_client.config.client_side_validation && create_event_schema_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_event_schema_request' when calling EventSchemasApi.create_event_schema"
      end
      # resource path
      local_var_path = '/event_schema'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_event_schema_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchema'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.create_event_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#create_event_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deactivate an event schema
    # You can deactivate an event schema using this API. In case you have an activate usage meter associated with the event schema, you will need to deactivate it first and then try deactivating the event schema. 
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [EventSchema]
    def deactivate_event_schema(event_schema_name, opts = {})
      data, _status_code, _headers = deactivate_event_schema_with_http_info(event_schema_name, opts)
      data
    end

    # Deactivate an event schema
    # You can deactivate an event schema using this API. In case you have an activate usage meter associated with the event schema, you will need to deactivate it first and then try deactivating the event schema. 
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventSchema, Integer, Hash)>] EventSchema data, response status code and response headers
    def deactivate_event_schema_with_http_info(event_schema_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.deactivate_event_schema ...'
      end
      # verify the required parameter 'event_schema_name' is set
      if @api_client.config.client_side_validation && event_schema_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_schema_name' when calling EventSchemasApi.deactivate_event_schema"
      end
      if @api_client.config.client_side_validation && event_schema_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "event_schema_name" when calling EventSchemasApi.deactivate_event_schema, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/event_schema/{event_schema_name}/deactivate'.sub('{' + 'event_schema_name' + '}', CGI.escape(event_schema_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchema'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.deactivate_event_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#deactivate_event_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an event schema
    # To delete(archive) an event schema, you’re required to archive associated active usage meters if any.
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [BaseSuccessResponse]
    def delete_event_schema(event_schema_name, opts = {})
      data, _status_code, _headers = delete_event_schema_with_http_info(event_schema_name, opts)
      data
    end

    # Delete an event schema
    # To delete(archive) an event schema, you’re required to archive associated active usage meters if any.
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSuccessResponse, Integer, Hash)>] BaseSuccessResponse data, response status code and response headers
    def delete_event_schema_with_http_info(event_schema_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.delete_event_schema ...'
      end
      # verify the required parameter 'event_schema_name' is set
      if @api_client.config.client_side_validation && event_schema_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_schema_name' when calling EventSchemasApi.delete_event_schema"
      end
      if @api_client.config.client_side_validation && event_schema_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "event_schema_name" when calling EventSchemasApi.delete_event_schema, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/event_schema/{event_schema_name}'.sub('{' + 'event_schema_name' + '}', CGI.escape(event_schema_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BaseSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.delete_event_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#delete_event_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an event schema
    # Update an event schema and add new attributes and dimensions  Once an event schema is activated, you cannot update or delete existing attributes and dimensions however you can add new attributes and dimensions and update event schema description.     operationId: updateEventSchema 
    # @param event_schema_name [String] 
    # @param update_event_schema_request [UpdateEventSchemaRequest] Payload to update event schema
    # @param [Hash] opts the optional parameters
    # @return [EventSchema]
    def event_schema_event_schema_name_patch(event_schema_name, update_event_schema_request, opts = {})
      data, _status_code, _headers = event_schema_event_schema_name_patch_with_http_info(event_schema_name, update_event_schema_request, opts)
      data
    end

    # Update an event schema
    # Update an event schema and add new attributes and dimensions  Once an event schema is activated, you cannot update or delete existing attributes and dimensions however you can add new attributes and dimensions and update event schema description.     operationId: updateEventSchema 
    # @param event_schema_name [String] 
    # @param update_event_schema_request [UpdateEventSchemaRequest] Payload to update event schema
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventSchema, Integer, Hash)>] EventSchema data, response status code and response headers
    def event_schema_event_schema_name_patch_with_http_info(event_schema_name, update_event_schema_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.event_schema_event_schema_name_patch ...'
      end
      # verify the required parameter 'event_schema_name' is set
      if @api_client.config.client_side_validation && event_schema_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_schema_name' when calling EventSchemasApi.event_schema_event_schema_name_patch"
      end
      if @api_client.config.client_side_validation && event_schema_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "event_schema_name" when calling EventSchemasApi.event_schema_event_schema_name_patch, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'update_event_schema_request' is set
      if @api_client.config.client_side_validation && update_event_schema_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_event_schema_request' when calling EventSchemasApi.event_schema_event_schema_name_patch"
      end
      # resource path
      local_var_path = '/event_schema/{event_schema_name}'.sub('{' + 'event_schema_name' + '}', CGI.escape(event_schema_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_event_schema_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchema'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.event_schema_event_schema_name_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#event_schema_event_schema_name_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an event schema
    # Get an event schema
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version Optional version to get a specific version. Gets latest version if it is not provided.
    # @return [EventSchema]
    def get_event_schema(event_schema_name, opts = {})
      data, _status_code, _headers = get_event_schema_with_http_info(event_schema_name, opts)
      data
    end

    # Get an event schema
    # Get an event schema
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version Optional version to get a specific version. Gets latest version if it is not provided.
    # @return [Array<(EventSchema, Integer, Hash)>] EventSchema data, response status code and response headers
    def get_event_schema_with_http_info(event_schema_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.get_event_schema ...'
      end
      # verify the required parameter 'event_schema_name' is set
      if @api_client.config.client_side_validation && event_schema_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_schema_name' when calling EventSchemasApi.get_event_schema"
      end
      if @api_client.config.client_side_validation && event_schema_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "event_schema_name" when calling EventSchemasApi.get_event_schema, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/event_schema/{event_schema_name}'.sub('{' + 'event_schema_name' + '}', CGI.escape(event_schema_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchema'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.get_event_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#get_event_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all event schema versions
    # Get a list of all the versions of an event schema
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [EventSchemaVersionsResponse]
    def list_event_schema_versions(event_schema_name, opts = {})
      data, _status_code, _headers = list_event_schema_versions_with_http_info(event_schema_name, opts)
      data
    end

    # List all event schema versions
    # Get a list of all the versions of an event schema
    # @param event_schema_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventSchemaVersionsResponse, Integer, Hash)>] EventSchemaVersionsResponse data, response status code and response headers
    def list_event_schema_versions_with_http_info(event_schema_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.list_event_schema_versions ...'
      end
      # verify the required parameter 'event_schema_name' is set
      if @api_client.config.client_side_validation && event_schema_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_schema_name' when calling EventSchemasApi.list_event_schema_versions"
      end
      if @api_client.config.client_side_validation && event_schema_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "event_schema_name" when calling EventSchemasApi.list_event_schema_versions, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/event_schema/{event_schema_name}/versions'.sub('{' + 'event_schema_name' + '}', CGI.escape(event_schema_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchemaVersionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.list_event_schema_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#list_event_schema_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List event schemas
    # Returns a list of event schema with pagination.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Filter by provided status
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [EventSchemaListPaginatedResponse]
    def list_event_schemas(opts = {})
      data, _status_code, _headers = list_event_schemas_with_http_info(opts)
      data
    end

    # List event schemas
    # Returns a list of event schema with pagination.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Filter by provided status
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [Array<(EventSchemaListPaginatedResponse, Integer, Hash)>] EventSchemaListPaginatedResponse data, response status code and response headers
    def list_event_schemas_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventSchemasApi.list_event_schemas ...'
      end
      allowable_values = ["ACTIVE", "INACTIVE"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/event_schema'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventSchemaListPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EventSchemasApi.list_event_schemas",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventSchemasApi#list_event_schemas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
