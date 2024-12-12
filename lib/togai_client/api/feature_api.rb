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
  class FeatureApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Feature and optionally associate with one or more event_schemas
    # Create a Feature optionally associate with one or more event_schemas
    # @param create_feature_request [CreateFeatureRequest] Payload to create a Feature along the association with event_schemas
    # @param [Hash] opts the optional parameters
    # @return [Feature]
    def create_feature(create_feature_request, opts = {})
      data, _status_code, _headers = create_feature_with_http_info(create_feature_request, opts)
      data
    end

    # Create a Feature and optionally associate with one or more event_schemas
    # Create a Feature optionally associate with one or more event_schemas
    # @param create_feature_request [CreateFeatureRequest] Payload to create a Feature along the association with event_schemas
    # @param [Hash] opts the optional parameters
    # @return [Array<(Feature, Integer, Hash)>] Feature data, response status code and response headers
    def create_feature_with_http_info(create_feature_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureApi.create_feature ...'
      end
      # verify the required parameter 'create_feature_request' is set
      if @api_client.config.client_side_validation && create_feature_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_feature_request' when calling FeatureApi.create_feature"
      end
      # resource path
      local_var_path = '/features'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_feature_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Feature'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureApi.create_feature",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureApi#create_feature\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Feature
    # Get details of a Feature
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @return [Feature]
    def get_feature(feature_id, opts = {})
      data, _status_code, _headers = get_feature_with_http_info(feature_id, opts)
      data
    end

    # Get a Feature
    # Get details of a Feature
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @return [Array<(Feature, Integer, Hash)>] Feature data, response status code and response headers
    def get_feature_with_http_info(feature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureApi.get_feature ...'
      end
      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling FeatureApi.get_feature"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling FeatureApi.get_feature, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/features/{feature_id}'.sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Feature'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureApi.get_feature",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureApi#get_feature\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Feature
    # Get a list of features along with its associations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [FeaturePaginatedListData]
    def get_features(opts = {})
      data, _status_code, _headers = get_features_with_http_info(opts)
      data
    end

    # List Feature
    # Get a list of features along with its associations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [Array<(FeaturePaginatedListData, Integer, Hash)>] FeaturePaginatedListData data, response status code and response headers
    def get_features_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureApi.get_features ...'
      end
      # resource path
      local_var_path = '/features'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'FeaturePaginatedListData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureApi.get_features",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureApi#get_features\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Feature
    # Update an existing feature and its eventSchema associations 
    # @param feature_id [String] feature_id corresponding to a feature
    # @param update_feature_request [UpdateFeatureRequest] Payload to update a Feature along the associations with event_schemas
    # @param [Hash] opts the optional parameters
    # @return [Feature]
    def update_feature(feature_id, update_feature_request, opts = {})
      data, _status_code, _headers = update_feature_with_http_info(feature_id, update_feature_request, opts)
      data
    end

    # Update a Feature
    # Update an existing feature and its eventSchema associations 
    # @param feature_id [String] feature_id corresponding to a feature
    # @param update_feature_request [UpdateFeatureRequest] Payload to update a Feature along the associations with event_schemas
    # @param [Hash] opts the optional parameters
    # @return [Array<(Feature, Integer, Hash)>] Feature data, response status code and response headers
    def update_feature_with_http_info(feature_id, update_feature_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureApi.update_feature ...'
      end
      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling FeatureApi.update_feature"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling FeatureApi.update_feature, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'update_feature_request' is set
      if @api_client.config.client_side_validation && update_feature_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_feature_request' when calling FeatureApi.update_feature"
      end
      # resource path
      local_var_path = '/features/{feature_id}'.sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_feature_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Feature'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureApi.update_feature",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureApi#update_feature\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end