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
  class WalletApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Top-up wallet for an account
    # Top-up wallet for an account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @option opts [TopupWalletRequest] :topup_wallet_request Payload to topup wallet of an account
    # @return [WalletBalanceResponse]
    def top_up_wallet_for_account(account_id, opts = {})
      data, _status_code, _headers = top_up_wallet_for_account_with_http_info(account_id, opts)
      data
    end

    # Top-up wallet for an account
    # Top-up wallet for an account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @option opts [TopupWalletRequest] :topup_wallet_request Payload to topup wallet of an account
    # @return [Array<(WalletBalanceResponse, Integer, Hash)>] WalletBalanceResponse data, response status code and response headers
    def top_up_wallet_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletApi.top_up_wallet_for_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling WalletApi.top_up_wallet_for_account"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling WalletApi.top_up_wallet_for_account, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/wallet_topup'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'topup_wallet_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'WalletBalanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletApi.top_up_wallet_for_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#top_up_wallet_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update wallet details for an account
    # Update wallet details for an account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWalletRequest] :update_wallet_request Payload to update wallet of an account
    # @return [WalletBalanceResponse]
    def update_wallet_for_account(account_id, opts = {})
      data, _status_code, _headers = update_wallet_for_account_with_http_info(account_id, opts)
      data
    end

    # Update wallet details for an account
    # Update wallet details for an account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWalletRequest] :update_wallet_request Payload to update wallet of an account
    # @return [Array<(WalletBalanceResponse, Integer, Hash)>] WalletBalanceResponse data, response status code and response headers
    def update_wallet_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletApi.update_wallet_for_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling WalletApi.update_wallet_for_account"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling WalletApi.update_wallet_for_account, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/wallet'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_wallet_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'WalletBalanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletApi.update_wallet_for_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#update_wallet_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wallet balance for Account
    # Wallet balance for Account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [WalletBalanceResponse]
    def wallet_balance_for_account(account_id, opts = {})
      data, _status_code, _headers = wallet_balance_for_account_with_http_info(account_id, opts)
      data
    end

    # Wallet balance for Account
    # Wallet balance for Account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [Array<(WalletBalanceResponse, Integer, Hash)>] WalletBalanceResponse data, response status code and response headers
    def wallet_balance_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletApi.wallet_balance_for_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling WalletApi.wallet_balance_for_account"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling WalletApi.wallet_balance_for_account, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/wallet'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WalletBalanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletApi.wallet_balance_for_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#wallet_balance_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wallet entries for Account
    # Wallet entries for Account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @return [WalletEntriesPaginatedResponse]
    def wallet_entries_for_account(account_id, opts = {})
      data, _status_code, _headers = wallet_entries_for_account_with_http_info(account_id, opts)
      data
    end

    # Wallet entries for Account
    # Wallet entries for Account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @return [Array<(WalletEntriesPaginatedResponse, Integer, Hash)>] WalletEntriesPaginatedResponse data, response status code and response headers
    def wallet_entries_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletApi.wallet_entries_for_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling WalletApi.wallet_entries_for_account"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling WalletApi.wallet_entries_for_account, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/wallet/entries'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WalletEntriesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletApi.wallet_entries_for_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#wallet_entries_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
