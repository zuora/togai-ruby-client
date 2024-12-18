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
  class PriceExperimentationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # (DEPRECATED) Calculate and return the revenue for a existing or new price plan
    # Calculate and return the revenue for a existing or new price plan
    # @param calculate_revenue_request [CalculateRevenueRequest] Request payload for calculateRevenueAPI
    # @param [Hash] opts the optional parameters
    # @return [CalculateRevenueResponse]
    def calculate_revenue(calculate_revenue_request, opts = {})
      data, _status_code, _headers = calculate_revenue_with_http_info(calculate_revenue_request, opts)
      data
    end

    # (DEPRECATED) Calculate and return the revenue for a existing or new price plan
    # Calculate and return the revenue for a existing or new price plan
    # @param calculate_revenue_request [CalculateRevenueRequest] Request payload for calculateRevenueAPI
    # @param [Hash] opts the optional parameters
    # @return [Array<(CalculateRevenueResponse, Integer, Hash)>] CalculateRevenueResponse data, response status code and response headers
    def calculate_revenue_with_http_info(calculate_revenue_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PriceExperimentationApi.calculate_revenue ...'
      end
      # verify the required parameter 'calculate_revenue_request' is set
      if @api_client.config.client_side_validation && calculate_revenue_request.nil?
        fail ArgumentError, "Missing the required parameter 'calculate_revenue_request' when calling PriceExperimentationApi.calculate_revenue"
      end
      # resource path
      local_var_path = '/revenue_calculator'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(calculate_revenue_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CalculateRevenueResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PriceExperimentationApi.calculate_revenue",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PriceExperimentationApi#calculate_revenue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Calculate and return the revenue for a existing or new price plan v2
    # Calculate and return the revenue for a existing or new price plan v2
    # @param calculate_revenue_request [CalculateRevenueRequest] Request payload for calculateRevenueAPI
    # @param [Hash] opts the optional parameters
    # @return [CalculateRevenueResponseV2]
    def calculate_revenue_v2(calculate_revenue_request, opts = {})
      data, _status_code, _headers = calculate_revenue_v2_with_http_info(calculate_revenue_request, opts)
      data
    end

    # Calculate and return the revenue for a existing or new price plan v2
    # Calculate and return the revenue for a existing or new price plan v2
    # @param calculate_revenue_request [CalculateRevenueRequest] Request payload for calculateRevenueAPI
    # @param [Hash] opts the optional parameters
    # @return [Array<(CalculateRevenueResponseV2, Integer, Hash)>] CalculateRevenueResponseV2 data, response status code and response headers
    def calculate_revenue_v2_with_http_info(calculate_revenue_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PriceExperimentationApi.calculate_revenue_v2 ...'
      end
      # verify the required parameter 'calculate_revenue_request' is set
      if @api_client.config.client_side_validation && calculate_revenue_request.nil?
        fail ArgumentError, "Missing the required parameter 'calculate_revenue_request' when calling PriceExperimentationApi.calculate_revenue_v2"
      end
      # resource path
      local_var_path = '/v2/revenue_calculator'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(calculate_revenue_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CalculateRevenueResponseV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PriceExperimentationApi.calculate_revenue_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PriceExperimentationApi#calculate_revenue_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
