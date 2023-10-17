# openapi.model.Story

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by** | **String** | The user who created the story. | [optional] 
**descendants** | **int** | The number of descendants (e.g., comments) for the story. | [optional] 
**id** | **int** | The story's unique ID. | [optional] 
**kids** | **List<int>** | List of item IDs that are direct descendants (e.g., comments on the story). | [optional] [default to const []]
**score** | **int** | The story's score. | [optional] 
**time** | **int** | Creation date of the story in Unix Time. | [optional] 
**title** | **String** | The title of the story. | [optional] 
**type** | **String** | The type of the item, which should be \"story\" for a story. | [optional] 
**url** | **String** | The URL of the story. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


