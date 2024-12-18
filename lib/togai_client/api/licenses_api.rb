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
  class LicensesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update a license entry
    # This API let’s you to add a license entry
    # @param [Hash] opts the optional parameters
    # @option opts [LicenseUpdateRequest] :license_update_request 
    # @return [LicenseUpdateResponse]
    def add_license_update_entry(opts = {})
      data, _status_code, _headers = add_license_update_entry_with_http_info(opts)
      data
    end

    # Update a license entry
    # This API let’s you to add a license entry
    # @param [Hash] opts the optional parameters
    # @option opts [LicenseUpdateRequest] :license_update_request 
    # @return [Array<(LicenseUpdateResponse, Integer, Hash)>] LicenseUpdateResponse data, response status code and response headers
    def add_license_update_entry_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.add_license_update_entry ...'
      end
      # resource path
      local_var_path = '/license_updates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'license_update_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LicenseUpdateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"LicensesApi.add_license_update_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#add_license_update_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of licenses updates
    # This API let’s you to fetch a list of licenses updates with multiple query parameters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @option opts [String] :account_id Filter option to filter based on account id.
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @option opts [String] :license_id License Id to filter
    # @option opts [Time] :effective_from effectiveFrom to filter
    # @return [GetLicenseUpdatesResponse]
    def get_license_updates(opts = {})
      data, _status_code, _headers = get_license_updates_with_http_info(opts)
      data
    end

    # Get a list of licenses updates
    # This API let’s you to fetch a list of licenses updates with multiple query parameters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @option opts [String] :account_id Filter option to filter based on account id.
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @option opts [String] :license_id License Id to filter
    # @option opts [Time] :effective_from effectiveFrom to filter
    # @return [Array<(GetLicenseUpdatesResponse, Integer, Hash)>] GetLicenseUpdatesResponse data, response status code and response headers
    def get_license_updates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.get_license_updates ...'
      end
      # resource path
      local_var_path = '/license_updates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'licenseId'] = opts[:'license_id'] if !opts[:'license_id'].nil?
      query_params[:'effectiveFrom'] = opts[:'effective_from'] if !opts[:'effective_from'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetLicenseUpdatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"LicensesApi.get_license_updates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#get_license_updates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of named licenses updates
    # This API let’s you to fetch a list of named licenses updates with multiple query parameters
    # @param [Hash] opts the optional parameters
    # @return [NamedLicenseUpdatesPaginatedResponse]
    def get_named_license_updates(opts = {})
      data, _status_code, _headers = get_named_license_updates_with_http_info(opts)
      data
    end

    # Get a list of named licenses updates
    # This API let’s you to fetch a list of named licenses updates with multiple query parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(NamedLicenseUpdatesPaginatedResponse, Integer, Hash)>] NamedLicenseUpdatesPaginatedResponse data, response status code and response headers
    def get_named_license_updates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.get_named_license_updates ...'
      end
      # resource path
      local_var_path = '/named_license_updates'

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
      return_type = opts[:debug_return_type] || 'NamedLicenseUpdatesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"LicensesApi.get_named_license_updates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#get_named_license_updates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a license entry details
    # This API let’s you to update metadata of a license entry
    # @param [Hash] opts the optional parameters
    # @option opts [String] :license_id License Id to filter
    # @option opts [LicenseEntryDetailsUpdateRequest] :license_entry_details_update_request 
    # @return [LicenseUpdateResponse]
    def update_license_entry_details(opts = {})
      data, _status_code, _headers = update_license_entry_details_with_http_info(opts)
      data
    end

    # Update a license entry details
    # This API let’s you to update metadata of a license entry
    # @param [Hash] opts the optional parameters
    # @option opts [String] :license_id License Id to filter
    # @option opts [LicenseEntryDetailsUpdateRequest] :license_entry_details_update_request 
    # @return [Array<(LicenseUpdateResponse, Integer, Hash)>] LicenseUpdateResponse data, response status code and response headers
    def update_license_entry_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LicensesApi.update_license_entry_details ...'
      end
      # resource path
      local_var_path = '/license_updates/{license_id}'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'licenseId'] = opts[:'license_id'] if !opts[:'license_id'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'license_entry_details_update_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LicenseUpdateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"LicensesApi.update_license_entry_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensesApi#update_license_entry_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
