# openapi.model.ApiItem

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by** | **String** | The user who created the ask post. | [optional] 
**id** | **int** | The ask post's unique ID. | [optional] 
**score** | **int** | The score of the ask post. | [optional] 
**text** | **String** | The text content of the ask post. | [optional] 
**time** | **int** | Creation date of the ask post in Unix Time. | [optional] 
**title** | **String** | The title of the ask post. | [optional] 
**type** | **String** | The type of the item, which should be \"story\" for an ask post. | [optional] 
**url** | **String** | The URL of the story. | [optional] 
**descendants** | **int** | The number of descendants (e.g., comments) for the ask post. | [optional] 
**kids** | **List<int>** | List of item IDs that are direct descendants (e.g., comments) to the ask post. | [optional] [default to const []]
**parts** | **List<int>** | An array of IDs of the parts of the poll. | [optional] [default to const []]
**poll** | **int** | The ID of the poll associated with this option. | [optional] 
**parent** | **int** | The ID of the parent item (e.g., the story) that this comment belongs to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


