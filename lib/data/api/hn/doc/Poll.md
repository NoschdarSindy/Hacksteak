# openapi.model.Poll

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by** | **String** | The user who created the poll. | [optional] 
**descendants** | **int** | The number of descendants (comments) for the poll. | [optional] 
**id** | **int** | The poll's unique ID. | [optional] 
**kids** | **List<int>** | An array of IDs of comments that are children of this poll. | [optional] [default to const []]
**parts** | **List<int>** | An array of IDs of the parts of the poll. | [optional] [default to const []]
**score** | **int** | The score of the poll. | [optional] 
**text** | **String** | The text content of the poll. | [optional] 
**time** | **int** | Creation date of the poll in Unix Time. | [optional] 
**title** | **String** | The title of the poll. | [optional] 
**type** | **String** | The type of the item, which should be \"poll\" for a poll. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


