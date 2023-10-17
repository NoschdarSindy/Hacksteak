# openapi.model.Ask

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by** | **String** | The user who created the ask post. | [optional] 
**descendants** | **int** | The number of descendants (e.g., comments) for the ask post. | [optional] 
**id** | **int** | The ask post's unique ID. | [optional] 
**kids** | **List<int>** | List of item IDs that are direct descendants (e.g., comments) to the ask post. | [optional] [default to const []]
**score** | **int** | The score of the ask post. | [optional] 
**text** | **String** | The text content of the ask post. | [optional] 
**time** | **int** | Creation date of the ask post in Unix Time. | [optional] 
**title** | **String** | The title of the ask post. | [optional] 
**type** | **String** | The type of the item, which should be \"story\" for an ask post. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


