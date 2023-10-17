# openapi.model.User

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The user's unique username (case-sensitive). | [optional] 
**created** | **int** | Creation date of the user in Unix Time. | [optional] 
**karma** | **num** | The user's karma. | [optional] 
**about** | **String** | The user's optional self-description (HTML). | [optional] 
**submitted** | **List<int>** | List of the user's stories, polls, and comments. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


