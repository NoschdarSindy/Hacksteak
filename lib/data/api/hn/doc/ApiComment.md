# openapi.model.ApiComment

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by** | **String** | The user who created the comment. | [optional] 
**id** | **int** | The comment's unique ID. | [optional] 
**kids** | **List<int>** | List of item IDs that are direct descendants (e.g., replies) to the comment. | [optional] [default to const []]
**parent** | **int** | The ID of the parent item (e.g., the story) that this comment belongs to. | [optional] 
**text** | **String** | The text content of the comment. | [optional] 
**time** | **int** | Creation date of the comment in Unix Time. | [optional] 
**type** | **String** | The type of the item, which should be \"comment\" for a comment. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


