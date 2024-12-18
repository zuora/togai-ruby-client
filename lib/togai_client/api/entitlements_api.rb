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
  class EntitlementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get entitlement value for a account
    # This API let’s you to get the entitlement value for a account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @return [GetEntitlementValuesResponse]
    def get_entitlement_value(account_id, feature_id, opts = {})
      data, _status_code, _headers = get_entitlement_value_with_http_info(account_id, feature_id, opts)
      data
    end

    # Get entitlement value for a account
    # This API let’s you to get the entitlement value for a account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEntitlementValuesResponse, Integer, Hash)>] GetEntitlementValuesResponse data, response status code and response headers
    def get_entitlement_value_with_http_info(account_id, feature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.get_entitlement_value ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.get_entitlement_value"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.get_entitlement_value, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling EntitlementsApi.get_entitlement_value"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling EntitlementsApi.get_entitlement_value, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/entitlements/{feature_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetEntitlementValuesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.get_entitlement_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#get_entitlement_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get entitlements for a account
    # This API let’s you to get the entitlements for a account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [GetEntitlementValuesResponse]
    def get_entitlements(account_id, opts = {})
      data, _status_code, _headers = get_entitlements_with_http_info(account_id, opts)
      data
    end

    # Get entitlements for a account
    # This API let’s you to get the entitlements for a account
    # @param account_id [String] account_id corresponding to an account
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEntitlementValuesResponse, Integer, Hash)>] GetEntitlementValuesResponse data, response status code and response headers
    def get_entitlements_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.get_entitlements ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.get_entitlements"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.get_entitlements, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/entitlements'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetEntitlementValuesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.get_entitlements",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#get_entitlements\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Feature credits balance
    # This API let’s you to get the feature credits balance
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @return [GetFeatureCreditsResponse]
    def get_feature_credits(account_id, feature_id, opts = {})
      data, _status_code, _headers = get_feature_credits_with_http_info(account_id, feature_id, opts)
      data
    end

    # Get Feature credits balance
    # This API let’s you to get the feature credits balance
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetFeatureCreditsResponse, Integer, Hash)>] GetFeatureCreditsResponse data, response status code and response headers
    def get_feature_credits_with_http_info(account_id, feature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.get_feature_credits ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.get_feature_credits"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.get_feature_credits, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling EntitlementsApi.get_feature_credits"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling EntitlementsApi.get_feature_credits, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/features/{feature_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetFeatureCreditsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.get_feature_credits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#get_feature_credits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingest event if a user is entitled to a feature
    # This API let’s you to ingest an event if a user is entitled to a feature
    # @param [Hash] opts the optional parameters
    # @option opts [IngestEventRequest] :ingest_event_request 
    # @return [BaseSuccessResponse]
    def ingest_entitled_event(opts = {})
      data, _status_code, _headers = ingest_entitled_event_with_http_info(opts)
      data
    end

    # Ingest event if a user is entitled to a feature
    # This API let’s you to ingest an event if a user is entitled to a feature
    # @param [Hash] opts the optional parameters
    # @option opts [IngestEventRequest] :ingest_event_request 
    # @return [Array<(BaseSuccessResponse, Integer, Hash)>] BaseSuccessResponse data, response status code and response headers
    def ingest_entitled_event_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.ingest_entitled_event ...'
      end
      # resource path
      local_var_path = '/entitled'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ingest_event_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BaseSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.ingest_entitled_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#ingest_entitled_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List feature credits entries of a feature for an account
    # This API let’s you to list the feature credits entries of a feature for an account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @return [GetFeatureCreditEntriesPaginatedResponse]
    def list_feature_credit_entries(account_id, feature_id, opts = {})
      data, _status_code, _headers = list_feature_credit_entries_with_http_info(account_id, feature_id, opts)
      data
    end

    # List feature credits entries of a feature for an account
    # This API let’s you to list the feature credits entries of a feature for an account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
    # @option opts [String] :next_token Pagination token used as a marker to get records from next page.
    # @return [Array<(GetFeatureCreditEntriesPaginatedResponse, Integer, Hash)>] GetFeatureCreditEntriesPaginatedResponse data, response status code and response headers
    def list_feature_credit_entries_with_http_info(account_id, feature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.list_feature_credit_entries ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.list_feature_credit_entries"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.list_feature_credit_entries, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling EntitlementsApi.list_feature_credit_entries"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling EntitlementsApi.list_feature_credit_entries, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/features/{feature_id}/entries'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetFeatureCreditEntriesPaginatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.list_feature_credit_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#list_feature_credit_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a feature credits entry
    # #### This API let's you to update the following attributes: `effectiveUntil` and `granted`  - **effectiveUntil**: must be in future - **granted**: must be greater than the existing usage (previous granted - current balance) 
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param entry_id [String] &#x60;entryId&#x60; corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$PRICE_PLAN&#x60; 2. If source of entry is an entitlement overage rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$OVERAGE&#x60; 3. If source of entry is a purchase: &#x60;purchase_id#int_index$PURCHASE&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateFeatureCreditsRequest] :update_feature_credits_request 
    # @return [FeatureCreditEntry]
    def update_feature_credit_entry(account_id, feature_id, entry_id, opts = {})
      data, _status_code, _headers = update_feature_credit_entry_with_http_info(account_id, feature_id, entry_id, opts)
      data
    end

    # Update a feature credits entry
    # #### This API let&#39;s you to update the following attributes: &#x60;effectiveUntil&#x60; and &#x60;granted&#x60;  - **effectiveUntil**: must be in future - **granted**: must be greater than the existing usage (previous granted - current balance) 
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param entry_id [String] &#x60;entryId&#x60; corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$PRICE_PLAN&#x60; 2. If source of entry is an entitlement overage rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$OVERAGE&#x60; 3. If source of entry is a purchase: &#x60;purchase_id#int_index$PURCHASE&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateFeatureCreditsRequest] :update_feature_credits_request 
    # @return [Array<(FeatureCreditEntry, Integer, Hash)>] FeatureCreditEntry data, response status code and response headers
    def update_feature_credit_entry_with_http_info(account_id, feature_id, entry_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.update_feature_credit_entry ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.update_feature_credit_entry"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.update_feature_credit_entry, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling EntitlementsApi.update_feature_credit_entry"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling EntitlementsApi.update_feature_credit_entry, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'entry_id' is set
      if @api_client.config.client_side_validation && entry_id.nil?
        fail ArgumentError, "Missing the required parameter 'entry_id' when calling EntitlementsApi.update_feature_credit_entry"
      end
      if @api_client.config.client_side_validation && entry_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "entry_id" when calling EntitlementsApi.update_feature_credit_entry, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/features/{feature_id}/entries/{entry_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s)).sub('{' + 'entry_id' + '}', CGI.escape(entry_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_feature_credits_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureCreditEntry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.update_feature_credit_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#update_feature_credit_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check entitlement value for a account
    # This API let’s you to validate the entitlement value for a account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @option opts [ValidateEntitlementValueRequest] :validate_entitlement_value_request 
    # @return [BaseSuccessResponse]
    def validate_entitlement_value(account_id, feature_id, opts = {})
      data, _status_code, _headers = validate_entitlement_value_with_http_info(account_id, feature_id, opts)
      data
    end

    # Check entitlement value for a account
    # This API let’s you to validate the entitlement value for a account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param [Hash] opts the optional parameters
    # @option opts [ValidateEntitlementValueRequest] :validate_entitlement_value_request 
    # @return [Array<(BaseSuccessResponse, Integer, Hash)>] BaseSuccessResponse data, response status code and response headers
    def validate_entitlement_value_with_http_info(account_id, feature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.validate_entitlement_value ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.validate_entitlement_value"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.validate_entitlement_value, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling EntitlementsApi.validate_entitlement_value"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling EntitlementsApi.validate_entitlement_value, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/entitlements/{feature_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'validate_entitlement_value_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BaseSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EntitlementsApi.validate_entitlement_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#validate_entitlement_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Void a feature credits entry of a feature for an account
    # This API let’s you to void the feature credits entries of a feature for an account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param entry_id [String] &#x60;entryId&#x60; corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$PRICE_PLAN&#x60; 2. If source of entry is an entitlement overage rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$OVERAGE&#x60; 3. If source of entry is a purchase: &#x60;purchase_id#int_index$PURCHASE&#x60; 
    # @param [Hash] opts the optional parameters
    # @return [BaseSuccessResponse]
    def void_feature_credit_entry(account_id, feature_id, entry_id, opts = {})
      data, _status_code, _headers = void_feature_credit_entry_with_http_info(account_id, feature_id, entry_id, opts)
      data
    end

    # Void a feature credits entry of a feature for an account
    # This API let’s you to void the feature credits entries of a feature for an account
    # @param account_id [String] account_id corresponding to an account
    # @param feature_id [String] feature_id corresponding to a feature
    # @param entry_id [String] &#x60;entryId&#x60; corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$PRICE_PLAN&#x60; 2. If source of entry is an entitlement overage rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$OVERAGE&#x60; 3. If source of entry is a purchase: &#x60;purchase_id#int_index$PURCHASE&#x60; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSuccessResponse, Integer, Hash)>] BaseSuccessResponse data, response status code and response headers
    def void_feature_credit_entry_with_http_info(account_id, feature_id, entry_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitlementsApi.void_feature_credit_entry ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling EntitlementsApi.void_feature_credit_entry"
      end
      if @api_client.config.client_side_validation && account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id" when calling EntitlementsApi.void_feature_credit_entry, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'feature_id' is set
      if @api_client.config.client_side_validation && feature_id.nil?
        fail ArgumentError, "Missing the required parameter 'feature_id' when calling EntitlementsApi.void_feature_credit_entry"
      end
      if @api_client.config.client_side_validation && feature_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "feature_id" when calling EntitlementsApi.void_feature_credit_entry, the character length must be smaller than or equal to 50.'
      end

      # verify the required parameter 'entry_id' is set
      if @api_client.config.client_side_validation && entry_id.nil?
        fail ArgumentError, "Missing the required parameter 'entry_id' when calling EntitlementsApi.void_feature_credit_entry"
      end
      if @api_client.config.client_side_validation && entry_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "entry_id" when calling EntitlementsApi.void_feature_credit_entry, the character length must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/accounts/{account_id}/features/{feature_id}/entries/{entry_id}/void'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'feature_id' + '}', CGI.escape(feature_id.to_s)).sub('{' + 'entry_id' + '}', CGI.escape(entry_id.to_s))

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
        :operation => :"EntitlementsApi.void_feature_credit_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitlementsApi#void_feature_credit_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
