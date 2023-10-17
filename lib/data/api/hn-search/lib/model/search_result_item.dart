//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResultItem {
  /// Returns a new [SearchResultItem] instance.
  SearchResultItem({
    this.title,
    this.url,
    this.author,
    this.points,
    this.storyText,
    this.commentText,
    this.tags = const [],
    this.numComments,
    this.objectID,
    this.highlightResult,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storyText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commentText;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numComments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchResultItemHighlightResult? highlightResult;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResultItem &&
     other.title == title &&
     other.url == url &&
     other.author == author &&
     other.points == points &&
     other.storyText == storyText &&
     other.commentText == commentText &&
     other.tags == tags &&
     other.numComments == numComments &&
     other.objectID == objectID &&
     other.highlightResult == highlightResult;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (storyText == null ? 0 : storyText!.hashCode) +
    (commentText == null ? 0 : commentText!.hashCode) +
    (tags.hashCode) +
    (numComments == null ? 0 : numComments!.hashCode) +
    (objectID == null ? 0 : objectID!.hashCode) +
    (highlightResult == null ? 0 : highlightResult!.hashCode);

  @override
  String toString() => 'SearchResultItem[title=$title, url=$url, author=$author, points=$points, storyText=$storyText, commentText=$commentText, tags=$tags, numComments=$numComments, objectID=$objectID, highlightResult=$highlightResult]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    if (this.storyText != null) {
      json[r'story_text'] = this.storyText;
    } else {
      json[r'story_text'] = null;
    }
    if (this.commentText != null) {
      json[r'comment_text'] = this.commentText;
    } else {
      json[r'comment_text'] = null;
    }
      json[r'_tags'] = this.tags;
    if (this.numComments != null) {
      json[r'num_comments'] = this.numComments;
    } else {
      json[r'num_comments'] = null;
    }
    if (this.objectID != null) {
      json[r'objectID'] = this.objectID;
    } else {
      json[r'objectID'] = null;
    }
    if (this.highlightResult != null) {
      json[r'_highlightResult'] = this.highlightResult;
    } else {
      json[r'_highlightResult'] = null;
    }
    return json;
  }

  /// Returns a new [SearchResultItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResultItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResultItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResultItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResultItem(
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
        author: mapValueOfType<String>(json, r'author'),
        points: mapValueOfType<int>(json, r'points'),
        storyText: mapValueOfType<String>(json, r'story_text'),
        commentText: mapValueOfType<String>(json, r'comment_text'),
        tags: json[r'_tags'] is List
            ? (json[r'_tags'] as List).cast<String>()
            : const [],
        numComments: mapValueOfType<int>(json, r'num_comments'),
        objectID: mapValueOfType<String>(json, r'objectID'),
        highlightResult: SearchResultItemHighlightResult.fromJson(json[r'_highlightResult']),
      );
    }
    return null;
  }

  static List<SearchResultItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResultItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResultItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResultItem> mapFromJson(dynamic json) {
    final map = <String, SearchResultItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResultItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResultItem-objects as value to a dart map
  static Map<String, List<SearchResultItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResultItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResultItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

