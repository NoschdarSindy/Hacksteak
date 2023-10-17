# openapi.api.HnApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://hacker-news.firebaseio.com/v0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAskHNStories**](HnApi.md#getaskhnstories) | **GET** /askstories.json | Ask HN Stories
[**getBestStories**](HnApi.md#getbeststories) | **GET** /beststories.json | Best Stories
[**getItemById**](HnApi.md#getitembyid) | **GET** /item/{item-id}.json | Get Item By ID
[**getJobHNStories**](HnApi.md#getjobhnstories) | **GET** /jobstories.json | Job HN Stories
[**getMaxItemId**](HnApi.md#getmaxitemid) | **GET** /maxitem.json | Max Item ID
[**getNewStories**](HnApi.md#getnewstories) | **GET** /newstories.json | New Stories
[**getShowHNStories**](HnApi.md#getshowhnstories) | **GET** /showstories.json | Show HN Stories
[**getTopStories**](HnApi.md#gettopstories) | **GET** /topstories.json | Top Stories
[**getUserById**](HnApi.md#getuserbyid) | **GET** /user/{user-id}.json | Get User By ID


# **getAskHNStories**
> List<int> getAskHNStories()

Ask HN Stories

Get up to 200 latest Ask HN stories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getAskHNStories();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getAskHNStories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBestStories**
> List<int> getBestStories()

Best Stories

Get up to 500 best stories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getBestStories();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getBestStories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemById**
> ApiItem getItemById(itemId)

Get Item By ID

Retrieve information about an item by its ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();
final itemId = 56; // int | The item's unique ID.

try {
    final result = api_instance.getItemById(itemId);
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getItemById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **int**| The item's unique ID. | 

### Return type

[**ApiItem**](ApiItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobHNStories**
> List<int> getJobHNStories()

Job HN Stories

Get up to 200 latest Job HN stories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getJobHNStories();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getJobHNStories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaxItemId**
> int getMaxItemId()

Max Item ID

Get the current largest item ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getMaxItemId();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getMaxItemId: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewStories**
> List<int> getNewStories()

New Stories

Get up to 500 new stories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getNewStories();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getNewStories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShowHNStories**
> List<int> getShowHNStories()

Show HN Stories

Get up to 200 latest Show HN stories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getShowHNStories();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getShowHNStories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopStories**
> List<int> getTopStories()

Top Stories

Get up to 500 top stories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();

try {
    final result = api_instance.getTopStories();
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getTopStories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> User getUserById(userId)

Get User By ID

Retrieve information about a user by their ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HnApi();
final userId = userId_example; // String | The user's unique username (case-sensitive).

try {
    final result = api_instance.getUserById(userId);
    print(result);
} catch (e) {
    print('Exception when calling HnApi->getUserById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The user's unique username (case-sensitive). | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

