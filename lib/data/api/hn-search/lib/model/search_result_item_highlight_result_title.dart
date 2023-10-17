//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResultItemHighlightResultTitle {
  /// Returns a new [SearchResultItemHighlightResultTitle] instance.
  SearchResultItemHighlightResultTitle({
    this.value,
    this.matchLevel,
    this.matchedWords = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchLevel;

  List<String> matchedWords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResultItemHighlightResultTitle &&
     other.value == value &&
     other.matchLevel == matchLevel &&
     other.matchedWords == matchedWords;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (matchLevel == null ? 0 : matchLevel!.hashCode) +
    (matchedWords.hashCode);

  @override
  String toString() => 'SearchResultItemHighlightResultTitle[value=$value, matchLevel=$matchLevel, matchedWords=$matchedWords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.matchLevel != null) {
      json[r'matchLevel'] = this.matchLevel;
    } else {
      json[r'matchLevel'] = null;
    }
      json[r'matchedWords'] = this.matchedWords;
    return json;
  }

  /// Returns a new [SearchResultItemHighlightResultTitle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResultItemHighlightResultTitle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResultItemHighlightResultTitle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResultItemHighlightResultTitle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResultItemHighlightResultTitle(
        value: mapValueOfType<String>(json, r'value'),
        matchLevel: mapValueOfType<String>(json, r'matchLevel'),
        matchedWords: json[r'matchedWords'] is List
            ? (json[r'matchedWords'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<SearchResultItemHighlightResultTitle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResultItemHighlightResultTitle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResultItemHighlightResultTitle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResultItemHighlightResultTitle> mapFromJson(dynamic json) {
    final map = <String, SearchResultItemHighlightResultTitle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResultItemHighlightResultTitle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResultItemHighlightResultTitle-objects as value to a dart map
  static Map<String, List<SearchResultItemHighlightResultTitle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResultItemHighlightResultTitle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResultItemHighlightResultTitle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

