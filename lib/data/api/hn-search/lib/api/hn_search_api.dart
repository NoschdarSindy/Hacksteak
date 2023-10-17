//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HnSearchApi {
  HnSearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Item By ID
  ///
  /// Retrieve information about an item by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The item's unique ID.
  Future<Response> getItemByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/items/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Item By ID
  ///
  /// Retrieve information about an item by its ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The item's unique ID.
  Future<ApiItem?> getItemById(String id,) async {
    final response = await getItemByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiItem',) as ApiItem;
    
    }
    return null;
  }

  /// Get User By Username
  ///
  /// Retrieve information about a user by their username.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The user's unique username.
  Future<Response> getUserByUsernameWithHttpInfo(String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{username}'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get User By Username
  ///
  /// Retrieve information about a user by their username.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The user's unique username.
  Future<User?> getUserByUsername(String username,) async {
    final response = await getUserByUsernameWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Search Items
  ///
  /// Search items based on a full-text query and filter on specific tags or attributes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Full-text query string.
  ///
  /// * [String] tags:
  ///   Filter on a specific tag. Available tags are listed in the description.
  ///
  /// * [String] numericFilters:
  ///   Filter on a specific numerical condition. Available numerical fields are listed in the description.
  ///
  /// * [int] page:
  ///   Page number for pagination.
  Future<Response> searchWithHttpInfo({ String? query, String? tags, String? numericFilters, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (numericFilters != null) {
      queryParams.addAll(_queryParams('', 'numericFilters', numericFilters));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Items
  ///
  /// Search items based on a full-text query and filter on specific tags or attributes.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Full-text query string.
  ///
  /// * [String] tags:
  ///   Filter on a specific tag. Available tags are listed in the description.
  ///
  /// * [String] numericFilters:
  ///   Filter on a specific numerical condition. Available numerical fields are listed in the description.
  ///
  /// * [int] page:
  ///   Page number for pagination.
  Future<SearchResult?> search({ String? query, String? tags, String? numericFilters, int? page, }) async {
    final response = await searchWithHttpInfo( query: query, tags: tags, numericFilters: numericFilters, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResult',) as SearchResult;
    
    }
    return null;
  }

  /// Search Items by Date
  ///
  /// Search items based on a full-text query and sort them by date, more recent first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Full-text query string.
  ///
  /// * [String] tags:
  ///   Filter on a specific tag. Available tags are listed in the description.
  ///
  /// * [String] numericFilters:
  ///   Filter on a specific numerical condition. Available numerical fields are listed in the description.
  ///
  /// * [int] page:
  ///   Page number for pagination.
  Future<Response> searchByDateWithHttpInfo({ String? query, String? tags, String? numericFilters, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search_by_date';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (numericFilters != null) {
      queryParams.addAll(_queryParams('', 'numericFilters', numericFilters));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Items by Date
  ///
  /// Search items based on a full-text query and sort them by date, more recent first.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Full-text query string.
  ///
  /// * [String] tags:
  ///   Filter on a specific tag. Available tags are listed in the description.
  ///
  /// * [String] numericFilters:
  ///   Filter on a specific numerical condition. Available numerical fields are listed in the description.
  ///
  /// * [int] page:
  ///   Page number for pagination.
  Future<SearchResult?> searchByDate({ String? query, String? tags, String? numericFilters, int? page, }) async {
    final response = await searchByDateWithHttpInfo( query: query, tags: tags, numericFilters: numericFilters, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResult',) as SearchResult;
    
    }
    return null;
  }
}
