# openapi.api.HnSearchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://hn.algolia.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getItemById**](HnSearchApi.md#getitembyid) | **GET** /items/{id} | Get Item By ID
[**getUserByUsername**](HnSearchApi.md#getuserbyusername) | **GET** /users/{username} | Get User By Username
[**search**](HnSearchApi.md#search) | **GET** /search | Search Items
[**searchByDate**](HnSearchApi.md#searchbydate) | **GET** /search_by_date | Search Items by Date


# **getItemById**
> ApiItem getItemById(id)

Get Item By ID

Retrieve information about an item by its ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnSearchApi();
final id = id_example; // String | The item's unique ID.

try {
    final result = api_instance.getItemById(id);
    print(result);
} catch (e) {
    print('Exception when calling HnSearchApi->getItemById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The item's unique ID. | 

### Return type

[**ApiItem**](ApiItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByUsername**
> User getUserByUsername(username)

Get User By Username

Retrieve information about a user by their username.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnSearchApi();
final username = username_example; // String | The user's unique username.

try {
    final result = api_instance.getUserByUsername(username);
    print(result);
} catch (e) {
    print('Exception when calling HnSearchApi->getUserByUsername: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The user's unique username. | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResult search(query, tags, numericFilters, page)

Search Items

Search items based on a full-text query and filter on specific tags or attributes.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnSearchApi();
final query = query_example; // String | Full-text query string.
final tags = tags_example; // String | Filter on a specific tag. Available tags are listed in the description.
final numericFilters = numericFilters_example; // String | Filter on a specific numerical condition. Available numerical fields are listed in the description.
final page = 56; // int | Page number for pagination.

try {
    final result = api_instance.search(query, tags, numericFilters, page);
    print(result);
} catch (e) {
    print('Exception when calling HnSearchApi->search: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Full-text query string. | [optional] 
 **tags** | **String**| Filter on a specific tag. Available tags are listed in the description. | [optional] 
 **numericFilters** | **String**| Filter on a specific numerical condition. Available numerical fields are listed in the description. | [optional] 
 **page** | **int**| Page number for pagination. | [optional] 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchByDate**
> SearchResult searchByDate(query, tags, numericFilters, page)

Search Items by Date

Search items based on a full-text query and sort them by date, more recent first.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnSearchApi();
final query = query_example; // String | Full-text query string.
final tags = tags_example; // String | Filter on a specific tag. Available tags are listed in the description.
final numericFilters = numericFilters_example; // String | Filter on a specific numerical condition. Available numerical fields are listed in the description.
final page = 56; // int | Page number for pagination.

try {
    final result = api_instance.searchByDate(query, tags, numericFilters, page);
    print(result);
} catch (e) {
    print('Exception when calling HnSearchApi->searchByDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Full-text query string. | [optional] 
 **tags** | **String**| Filter on a specific tag. Available tags are listed in the description. | [optional] 
 **numericFilters** | **String**| Filter on a specific numerical condition. Available numerical fields are listed in the description. | [optional] 
 **page** | **int**| Page number for pagination. | [optional] 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

