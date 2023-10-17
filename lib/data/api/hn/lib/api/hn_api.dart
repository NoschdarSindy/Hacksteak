//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HnApi {
  HnApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Ask HN Stories
  ///
  /// Get up to 200 latest Ask HN stories.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAskHNStoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/askstories.json';

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

  /// Ask HN Stories
  ///
  /// Get up to 200 latest Ask HN stories.
  Future<List<int>?> getAskHNStories() async {
    final response = await getAskHNStoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// Best Stories
  ///
  /// Get up to 500 best stories.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBestStoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/beststories.json';

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

  /// Best Stories
  ///
  /// Get up to 500 best stories.
  Future<List<int>?> getBestStories() async {
    final response = await getBestStoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// Get Item By ID
  ///
  /// Retrieve information about an item by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] itemId (required):
  ///   The item's unique ID.
  Future<Response> getItemByIdWithHttpInfo(int itemId,) async {
    // ignore: prefer_const_declarations
    final path = r'/item/{item-id}.json'
      .replaceAll('{item-id}', itemId.toString());

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
  /// * [int] itemId (required):
  ///   The item's unique ID.
  Future<ApiItem?> getItemById(int itemId,) async {
    final response = await getItemByIdWithHttpInfo(itemId,);
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

  /// Job HN Stories
  ///
  /// Get up to 200 latest Job HN stories.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getJobHNStoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/jobstories.json';

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

  /// Job HN Stories
  ///
  /// Get up to 200 latest Job HN stories.
  Future<List<int>?> getJobHNStories() async {
    final response = await getJobHNStoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// Max Item ID
  ///
  /// Get the current largest item ID.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMaxItemIdWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/maxitem.json';

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

  /// Max Item ID
  ///
  /// Get the current largest item ID.
  Future<int?> getMaxItemId() async {
    final response = await getMaxItemIdWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'int',) as int;
    
    }
    return null;
  }

  /// New Stories
  ///
  /// Get up to 500 new stories.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNewStoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/newstories.json';

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

  /// New Stories
  ///
  /// Get up to 500 new stories.
  Future<List<int>?> getNewStories() async {
    final response = await getNewStoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// Show HN Stories
  ///
  /// Get up to 200 latest Show HN stories.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getShowHNStoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/showstories.json';

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

  /// Show HN Stories
  ///
  /// Get up to 200 latest Show HN stories.
  Future<List<int>?> getShowHNStories() async {
    final response = await getShowHNStoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// Top Stories
  ///
  /// Get up to 500 top stories.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTopStoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/topstories.json';

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

  /// Top Stories
  ///
  /// Get up to 500 top stories.
  Future<List<int>?> getTopStories() async {
    final response = await getTopStoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<int>') as List)
        .cast<int>()
        .toList();

    }
    return null;
  }

  /// Get User By ID
  ///
  /// Retrieve information about a user by their ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user's unique username (case-sensitive).
  Future<Response> getUserByIdWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{user-id}.json'
      .replaceAll('{user-id}', userId);

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

  /// Get User By ID
  ///
  /// Retrieve information about a user by their ID.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user's unique username (case-sensitive).
  Future<User?> getUserById(String userId,) async {
    final response = await getUserByIdWithHttpInfo(userId,);
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
}
