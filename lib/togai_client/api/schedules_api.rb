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
  class SchedulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk edit schedules of an account
    # Bulk edit schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param edit_account_schedule_request [EditAccountScheduleRequest] Payload to edit schedules of an account
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :discard 
    # @return [UpdatePricingScheduleResponse]
    def bulk_edit_schedules(account_id, edit_account_schedule_request, opts = {})
      data, _status_code, _headers = bulk_edit_schedules_with_http_info(account_id, edit_account_schedule_request, opts)
      data
    end

    # Bulk edit schedules of an account
    # Bulk edit schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param edit_account_schedule_request [EditAccountScheduleRequest] Payload to edit schedules of an account
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :discard 
    # @return [Array<(UpdatePricingScheduleResponse, Integer, Hash)>] UpdatePricingScheduleResponse data, response status code and response headers
    def bulk_edit_schedules_with_http_info(account_id, edit_account_schedule_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.bulk_edit_schedules ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SchedulesApi.bulk_edit_schedules"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling SchedulesApi.bulk_edit_schedules, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'edit_account_schedule_request' is set
      if @api_client.config.client_side_validation && edit_account_schedule_request.nil?
        fail ArgumentError, "Missing the required parameter 'edit_account_schedule_request' when calling SchedulesApi.bulk_edit_schedules"
      end
      # resource path
      local_var_path = '/v2/accounts/{account_id}/edit_schedules'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'discard'] = opts[:'discard'] if !opts[:'discard'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(edit_account_schedule_request)

      # return_type
      return_type = opts[:debug_return_type] || 'UpdatePricingScheduleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.bulk_edit_schedules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#bulk_edit_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk rate card operations on a schedule
    # Bulk rate card operations on a schedule
    # @param schedule_id [String] 
    # @param bulk_rate_card_operations_request [BulkRateCardOperationsRequest] Payload to bulk rate card operations
    # @param [Hash] opts the optional parameters
    # @return [BulkRateCardOperationsResponse]
    def bulk_rate_card_operations_on_schedule(schedule_id, bulk_rate_card_operations_request, opts = {})
      data, _status_code, _headers = bulk_rate_card_operations_on_schedule_with_http_info(schedule_id, bulk_rate_card_operations_request, opts)
      data
    end

    # Bulk rate card operations on a schedule
    # Bulk rate card operations on a schedule
    # @param schedule_id [String] 
    # @param bulk_rate_card_operations_request [BulkRateCardOperationsRequest] Payload to bulk rate card operations
    # @param [Hash] opts the optional parameters
    # @return [Array<(BulkRateCardOperationsResponse, Integer, Hash)>] BulkRateCardOperationsResponse data, response status code and response headers
    def bulk_rate_card_operations_on_schedule_with_http_info(schedule_id, bulk_rate_card_operations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.bulk_rate_card_operations_on_schedule ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling SchedulesApi.bulk_rate_card_operations_on_schedule"
      end
      # verify the required parameter 'bulk_rate_card_operations_request' is set
      if @api_client.config.client_side_validation && bulk_rate_card_operations_request.nil?
        fail ArgumentError, "Missing the required parameter 'bulk_rate_card_operations_request' when calling SchedulesApi.bulk_rate_card_operations_on_schedule"
      end
      # resource path
      local_var_path = '/v2/schedules/{schedule_id}/rate_cards'.sub('{' + 'schedule_id' + '}', CGI.escape(schedule_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bulk_rate_card_operations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'BulkRateCardOperationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.bulk_rate_card_operations_on_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#bulk_rate_card_operations_on_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Discard schedules of an account
    # Discard schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [BaseSuccessResponse]
    def discard_account_schedules(account_id, opts = {})
      data, _status_code, _headers = discard_account_schedules_with_http_info(account_id, opts)
      data
    end

    # Discard schedules of an account
    # Discard schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSuccessResponse, Integer, Hash)>] BaseSuccessResponse data, response status code and response headers
    def discard_account_schedules_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.discard_account_schedules ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SchedulesApi.discard_account_schedules"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling SchedulesApi.discard_account_schedules, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/v2/accounts/{account_id}/discard_schedules'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
        :operation => :"SchedulesApi.discard_account_schedules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#discard_account_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finalize schedules of an account
    # Finalize schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param finalize_account_schedules [FinalizeAccountSchedules] Payload to finalize account schedules
    # @param [Hash] opts the optional parameters
    # @return [SchedulesPaginatedResponse]
    def finalize_account_schedules(account_id, finalize_account_schedules, opts = {})
      data, _status_code, _headers = finalize_account_schedules_with_http_info(account_id, finalize_account_schedules, opts)
      data
    end

    # Finalize schedules of an account
    # Finalize schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param finalize_account_schedules [FinalizeAccountSchedules] Payload to finalize account schedules
    # @param [Hash] opts the optional parameters
    # @return [Array<(SchedulesPaginatedResponse, Integer, Hash)>] SchedulesPaginatedResponse data, response status code and response headers
    def finalize_account_schedules_with_http_info(account_id, finalize_account_schedules, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.finalize_account_schedules ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SchedulesApi.finalize_account_schedules"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling SchedulesApi.finalize_account_schedules, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'finalize_account_schedules' is set
      if @api_client.config.client_side_validation && finalize_account_schedules.nil?
        fail ArgumentError, "Missing the required parameter 'finalize_account_schedules' when calling SchedulesApi.finalize_account_schedules"
      end
      # resource path
      local_var_path = '/v2/accounts/{account_id}/finalize_schedules'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(finalize_account_schedules)

      # return_type
      return_type = opts[:debug_return_type] || 'SchedulesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.finalize_account_schedules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#finalize_account_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List pricing rules of a account schedule
    # List pricing rules of a account schedule
    # @param schedule_id [String] 
    # @param mode [String] Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
    # @param [Hash] opts the optional parameters
    # @return [PricingRulesPaginatedResponse]
    def list_pricing_rules(schedule_id, mode, opts = {})
      data, _status_code, _headers = list_pricing_rules_with_http_info(schedule_id, mode, opts)
      data
    end

    # List pricing rules of a account schedule
    # List pricing rules of a account schedule
    # @param schedule_id [String] 
    # @param mode [String] Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingRulesPaginatedResponse, Integer, Hash)>] PricingRulesPaginatedResponse data, response status code and response headers
    def list_pricing_rules_with_http_info(schedule_id, mode, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.list_pricing_rules ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling SchedulesApi.list_pricing_rules"
      end
      # verify the required parameter 'mode' is set
      if @api_client.config.client_side_validation && mode.nil?
        fail ArgumentError, "Missing the required parameter 'mode' when calling SchedulesApi.list_pricing_rules"
      end
      # resource path
      local_var_path = '/v2/schedules/{schedule_id}/pricing_rules'.sub('{' + 'schedule_id' + '}', CGI.escape(schedule_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mode'] = mode

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PricingRulesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.list_pricing_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#list_pricing_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of errors of a acc schedule
    # Get list of errors of a acc schedule
    # @param schedule_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ValidatedEntityErrorsPaginatedResponse]
    def list_schedule_errors(schedule_id, opts = {})
      data, _status_code, _headers = list_schedule_errors_with_http_info(schedule_id, opts)
      data
    end

    # Get list of errors of a acc schedule
    # Get list of errors of a acc schedule
    # @param schedule_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ValidatedEntityErrorsPaginatedResponse, Integer, Hash)>] ValidatedEntityErrorsPaginatedResponse data, response status code and response headers
    def list_schedule_errors_with_http_info(schedule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.list_schedule_errors ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling SchedulesApi.list_schedule_errors"
      end
      # resource path
      local_var_path = '/v2/schedules/{schedule_id}/errors'.sub('{' + 'schedule_id' + '}', CGI.escape(schedule_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ValidatedEntityErrorsPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.list_schedule_errors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#list_schedule_errors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rate cards
    # List rate cards
    # @param schedule_id [String] 
    # @param mode [String] Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [RateCardPaginatedResponse]
    def list_schedule_rate_cards(schedule_id, mode, opts = {})
      data, _status_code, _headers = list_schedule_rate_cards_with_http_info(schedule_id, mode, opts)
      data
    end

    # List rate cards
    # List rate cards
    # @param schedule_id [String] 
    # @param mode [String] Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [Array<(RateCardPaginatedResponse, Integer, Hash)>] RateCardPaginatedResponse data, response status code and response headers
    def list_schedule_rate_cards_with_http_info(schedule_id, mode, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.list_schedule_rate_cards ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling SchedulesApi.list_schedule_rate_cards"
      end
      # verify the required parameter 'mode' is set
      if @api_client.config.client_side_validation && mode.nil?
        fail ArgumentError, "Missing the required parameter 'mode' when calling SchedulesApi.list_schedule_rate_cards"
      end
      # resource path
      local_var_path = '/v2/schedules/{schedule_id}/rate_cards'.sub('{' + 'schedule_id' + '}', CGI.escape(schedule_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mode'] = mode
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
      return_type = opts[:debug_return_type] || 'RateCardPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.list_schedule_rate_cards",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#list_schedule_rate_cards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List pricing schedules of an account
    # List pricing schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param mode [String] Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [SchedulesPaginatedResponse]
    def listaccount_schedules(account_id, mode, opts = {})
      data, _status_code, _headers = listaccount_schedules_with_http_info(account_id, mode, opts)
      data
    end

    # List pricing schedules of an account
    # List pricing schedules of an account
    # @param account_id [String] account_id corresponding to an account
    # @param mode [String] Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token 
    # @option opts [Float] :page_size 
    # @return [Array<(SchedulesPaginatedResponse, Integer, Hash)>] SchedulesPaginatedResponse data, response status code and response headers
    def listaccount_schedules_with_http_info(account_id, mode, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.listaccount_schedules ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SchedulesApi.listaccount_schedules"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling SchedulesApi.listaccount_schedules, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'mode' is set
      if @api_client.config.client_side_validation && mode.nil?
        fail ArgumentError, "Missing the required parameter 'mode' when calling SchedulesApi.listaccount_schedules"
      end
      # resource path
      local_var_path = '/v2/accounts/{account_id}/schedules'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mode'] = mode
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
      return_type = opts[:debug_return_type] || 'SchedulesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.listaccount_schedules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#listaccount_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update pricing rules of a account schedule
    # Update pricing rules of a account schedule
    # @param schedule_id [String] 
    # @param update_pricing_rules_request [UpdatePricingRulesRequest] Payload to update pricing rules
    # @param [Hash] opts the optional parameters
    # @return [PricingRulesPaginatedResponse]
    def update_pricing_rules(schedule_id, update_pricing_rules_request, opts = {})
      data, _status_code, _headers = update_pricing_rules_with_http_info(schedule_id, update_pricing_rules_request, opts)
      data
    end

    # Update pricing rules of a account schedule
    # Update pricing rules of a account schedule
    # @param schedule_id [String] 
    # @param update_pricing_rules_request [UpdatePricingRulesRequest] Payload to update pricing rules
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingRulesPaginatedResponse, Integer, Hash)>] PricingRulesPaginatedResponse data, response status code and response headers
    def update_pricing_rules_with_http_info(schedule_id, update_pricing_rules_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchedulesApi.update_pricing_rules ...'
      end
      # verify the required parameter 'schedule_id' is set
      if @api_client.config.client_side_validation && schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'schedule_id' when calling SchedulesApi.update_pricing_rules"
      end
      # verify the required parameter 'update_pricing_rules_request' is set
      if @api_client.config.client_side_validation && update_pricing_rules_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_pricing_rules_request' when calling SchedulesApi.update_pricing_rules"
      end
      # resource path
      local_var_path = '/v2/schedules/{schedule_id}/pricing_rules'.sub('{' + 'schedule_id' + '}', CGI.escape(schedule_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_pricing_rules_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PricingRulesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SchedulesApi.update_pricing_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchedulesApi#update_pricing_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
