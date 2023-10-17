//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResultItemHighlightResult {
  /// Returns a new [SearchResultItemHighlightResult] instance.
  SearchResultItemHighlightResult({
    this.title,
    this.url,
    this.author,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchResultItemHighlightResultTitle? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchResultItemHighlightResultTitle? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchResultItemHighlightResultTitle? author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResultItemHighlightResult &&
     other.title == title &&
     other.url == url &&
     other.author == author;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (author == null ? 0 : author!.hashCode);

  @override
  String toString() => 'SearchResultItemHighlightResult[title=$title, url=$url, author=$author]';

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
    return json;
  }

  /// Returns a new [SearchResultItemHighlightResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResultItemHighlightResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResultItemHighlightResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResultItemHighlightResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResultItemHighlightResult(
        title: SearchResultItemHighlightResultTitle.fromJson(json[r'title']),
        url: SearchResultItemHighlightResultTitle.fromJson(json[r'url']),
        author: SearchResultItemHighlightResultTitle.fromJson(json[r'author']),
      );
    }
    return null;
  }

  static List<SearchResultItemHighlightResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResultItemHighlightResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResultItemHighlightResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResultItemHighlightResult> mapFromJson(dynamic json) {
    final map = <String, SearchResultItemHighlightResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResultItemHighlightResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResultItemHighlightResult-objects as value to a dart map
  static Map<String, List<SearchResultItemHighlightResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResultItemHighlightResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResultItemHighlightResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

