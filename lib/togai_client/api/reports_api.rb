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
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List reports
    # List reports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @option opts [String] :fetch_for Fetch for flag used to get the reports from: 1. ALL: Both the organization and accounts 2. ORGANIZATION: Only the organization 3. ACCOUNTS: Only accounts, works with account_id filter only.  (default to 'ORGANIZATION')
    # @return [ReportsPaginatedResponse]
    def list_reports(opts = {})
      data, _status_code, _headers = list_reports_with_http_info(opts)
      data
    end

    # List reports
    # List reports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @option opts [String] :fetch_for Fetch for flag used to get the reports from: 1. ALL: Both the organization and accounts 2. ORGANIZATION: Only the organization 3. ACCOUNTS: Only accounts, works with account_id filter only.  (default to 'ORGANIZATION')
    # @return [Array<(ReportsPaginatedResponse, Integer, Hash)>] ReportsPaginatedResponse data, response status code and response headers
    def list_reports_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.list_reports ...'
      end
      allowable_values = ["ALL", "ORGANIZATION", "ACCOUNTS"]
      if @api_client.config.client_side_validation && opts[:'fetch_for'] && !allowable_values.include?(opts[:'fetch_for'])
        fail ArgumentError, "invalid value for \"fetch_for\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/reports'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'fetchFor'] = opts[:'fetch_for'] if !opts[:'fetch_for'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReportsPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportsApi.list_reports",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#list_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
