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
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate short lived bearer token
    # Generates and returns a bearer token. Behavior of this API differs on the basis of the auth mechanism used to make the request.   - For API key auth, this API generates a JWT token whcih is valid for 24 hours and returns it.   - For JWT bearer auth, returns the same JWT token in response For information on how to generate API token, refer [Generating New API Keys](https://docs.togai.com/api-reference/authentication#generating-new-api-keys) section of docs. 
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def authenticate(opts = {})
      data, _status_code, _headers = authenticate_with_http_info(opts)
      data
    end

    # Generate short lived bearer token
    # Generates and returns a bearer token. Behavior of this API differs on the basis of the auth mechanism used to make the request.   - For API key auth, this API generates a JWT token whcih is valid for 24 hours and returns it.   - For JWT bearer auth, returns the same JWT token in response For information on how to generate API token, refer [Generating New API Keys](https://docs.togai.com/api-reference/authentication#generating-new-api-keys) section of docs. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def authenticate_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.authenticate ...'
      end
      # resource path
      local_var_path = '/authenticate'

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
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.authenticate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#authenticate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
