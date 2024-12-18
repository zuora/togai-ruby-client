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
  class AddOnsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an AddOn
    # Create an AddOn
    # @param create_add_on_request [CreateAddOnRequest] Payload to create addon
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def create_add_on(create_add_on_request, opts = {})
      data, _status_code, _headers = create_add_on_with_http_info(create_add_on_request, opts)
      data
    end

    # Create an AddOn
    # Create an AddOn
    # @param create_add_on_request [CreateAddOnRequest] Payload to create addon
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def create_add_on_with_http_info(create_add_on_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.create_add_on ...'
      end
      # verify the required parameter 'create_add_on_request' is set
      if @api_client.config.client_side_validation && create_add_on_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_add_on_request' when calling AddOnsApi.create_add_on"
      end
      # resource path
      local_var_path = '/addons'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_add_on_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.create_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#create_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an addon
    # Archive an addOn
    # @param addon_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [BaseSuccessResponse]
    def delete_add_on(addon_id, opts = {})
      data, _status_code, _headers = delete_add_on_with_http_info(addon_id, opts)
      data
    end

    # Delete an addon
    # Archive an addOn
    # @param addon_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSuccessResponse, Integer, Hash)>] BaseSuccessResponse data, response status code and response headers
    def delete_add_on_with_http_info(addon_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.delete_add_on ...'
      end
      # verify the required parameter 'addon_id' is set
      if @api_client.config.client_side_validation && addon_id.nil?
        fail ArgumentError, "Missing the required parameter 'addon_id' when calling AddOnsApi.delete_add_on"
      end
      if @api_client.config.client_side_validation && addon_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "addon_id" when calling AddOnsApi.delete_add_on, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/addons/{addon_id}'.sub('{' + 'addon_id' + '}', CGI.escape(addon_id.to_s))

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
        :operation => :"AddOnsApi.delete_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#delete_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an addon
    # Get details of an addon
    # @param addon_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def get_add_on(addon_id, opts = {})
      data, _status_code, _headers = get_add_on_with_http_info(addon_id, opts)
      data
    end

    # Get an addon
    # Get details of an addon
    # @param addon_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def get_add_on_with_http_info(addon_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.get_add_on ...'
      end
      # verify the required parameter 'addon_id' is set
      if @api_client.config.client_side_validation && addon_id.nil?
        fail ArgumentError, "Missing the required parameter 'addon_id' when calling AddOnsApi.get_add_on"
      end
      if @api_client.config.client_side_validation && addon_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "addon_id" when calling AddOnsApi.get_add_on, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/addons/{addon_id}'.sub('{' + 'addon_id' + '}', CGI.escape(addon_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.get_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#get_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List addOns
    # Get a list of add-ons
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Filter by status 
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [AddOnPaginatedResponse]
    def get_add_ons(opts = {})
      data, _status_code, _headers = get_add_ons_with_http_info(opts)
      data
    end

    # List addOns
    # Get a list of add-ons
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Filter by status 
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [Array<(AddOnPaginatedResponse, Integer, Hash)>] AddOnPaginatedResponse data, response status code and response headers
    def get_add_ons_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.get_add_ons ...'
      end
      allowable_values = ["ACTIVE", "ARCHIVED"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/addons'

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
      return_type = opts[:debug_return_type] || 'AddOnPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.get_add_ons",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#get_add_ons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an addon
    # Update an existing addon 
    # @param addon_id [String] 
    # @param update_add_on_request [UpdateAddOnRequest] Payload to update addon
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def update_add_on(addon_id, update_add_on_request, opts = {})
      data, _status_code, _headers = update_add_on_with_http_info(addon_id, update_add_on_request, opts)
      data
    end

    # Update an addon
    # Update an existing addon 
    # @param addon_id [String] 
    # @param update_add_on_request [UpdateAddOnRequest] Payload to update addon
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def update_add_on_with_http_info(addon_id, update_add_on_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.update_add_on ...'
      end
      # verify the required parameter 'addon_id' is set
      if @api_client.config.client_side_validation && addon_id.nil?
        fail ArgumentError, "Missing the required parameter 'addon_id' when calling AddOnsApi.update_add_on"
      end
      if @api_client.config.client_side_validation && addon_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "addon_id" when calling AddOnsApi.update_add_on, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'update_add_on_request' is set
      if @api_client.config.client_side_validation && update_add_on_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_add_on_request' when calling AddOnsApi.update_add_on"
      end
      # resource path
      local_var_path = '/addons/{addon_id}'.sub('{' + 'addon_id' + '}', CGI.escape(addon_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_add_on_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.update_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#update_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
