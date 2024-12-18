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
  class CreditsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Grant credit
    # Grant credit
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditRequest] :create_credit_request Payload to grant credits
    # @return [CreateCreditResponse]
    def create_credit(opts = {})
      data, _status_code, _headers = create_credit_with_http_info(opts)
      data
    end

    # Grant credit
    # Grant credit
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditRequest] :create_credit_request Payload to grant credits
    # @return [Array<(CreateCreditResponse, Integer, Hash)>] CreateCreditResponse data, response status code and response headers
    def create_credit_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditsApi.create_credit ...'
      end
      # resource path
      local_var_path = '/credits'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_credit_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCreditResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditsApi.create_credit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditsApi#create_credit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Credit balance for Account
    # Credit balance for Account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [CreditBalanceResponse]
    def credit_balance_for_account(account_id, opts = {})
      data, _status_code, _headers = credit_balance_for_account_with_http_info(account_id, opts)
      data
    end

    # Credit balance for Account
    # Credit balance for Account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditBalanceResponse, Integer, Hash)>] CreditBalanceResponse data, response status code and response headers
    def credit_balance_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditsApi.credit_balance_for_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CreditsApi.credit_balance_for_account"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling CreditsApi.credit_balance_for_account, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/credit_balance'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditBalanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditsApi.credit_balance_for_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditsApi#credit_balance_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get credit details
    # Get credit details
    # @param credit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CreditDetailsResponse]
    def get_credit_details(credit_id, opts = {})
      data, _status_code, _headers = get_credit_details_with_http_info(credit_id, opts)
      data
    end

    # Get credit details
    # Get credit details
    # @param credit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditDetailsResponse, Integer, Hash)>] CreditDetailsResponse data, response status code and response headers
    def get_credit_details_with_http_info(credit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditsApi.get_credit_details ...'
      end
      # verify the required parameter 'credit_id' is set
      if @api_client.config.client_side_validation && credit_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_id' when calling CreditsApi.get_credit_details"
      end
      # resource path
      local_var_path = '/credits/{credit_id}'.sub('{' + 'credit_id' + '}', CGI.escape(credit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditDetailsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditsApi.get_credit_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditsApi#get_credit_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List credits
    # Get all credits
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @option opts [String] :status Filter option to filter by status.
    # @option opts [String] :account_id Filter option to filter based on account id.
    # @option opts [String] :id Filter option to filter based on credit id.
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @return [ListCreditsResponse]
    def list_credits(opts = {})
      data, _status_code, _headers = list_credits_with_http_info(opts)
      data
    end

    # List credits
    # Get all credits
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @option opts [String] :status Filter option to filter by status.
    # @option opts [String] :account_id Filter option to filter based on account id.
    # @option opts [String] :id Filter option to filter based on credit id.
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @return [Array<(ListCreditsResponse, Integer, Hash)>] ListCreditsResponse data, response status code and response headers
    def list_credits_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditsApi.list_credits ...'
      end
      # resource path
      local_var_path = '/credits'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
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
      return_type = opts[:debug_return_type] || 'ListCreditsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditsApi.list_credits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditsApi#list_credits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Void credit
    # Void credit
    # @param credit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Credit]
    def void_credit(credit_id, opts = {})
      data, _status_code, _headers = void_credit_with_http_info(credit_id, opts)
      data
    end

    # Void credit
    # Void credit
    # @param credit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Credit, Integer, Hash)>] Credit data, response status code and response headers
    def void_credit_with_http_info(credit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditsApi.void_credit ...'
      end
      # verify the required parameter 'credit_id' is set
      if @api_client.config.client_side_validation && credit_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_id' when calling CreditsApi.void_credit"
      end
      # resource path
      local_var_path = '/credits/{credit_id}/void'.sub('{' + 'credit_id' + '}', CGI.escape(credit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Credit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditsApi.void_credit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditsApi#void_credit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
