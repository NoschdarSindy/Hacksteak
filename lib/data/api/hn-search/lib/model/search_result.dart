//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResult {
  /// Returns a new [SearchResult] instance.
  SearchResult({
    this.hits = const [],
    this.page,
    this.nbHits,
    this.nbPages,
    this.hitsPerPage,
    this.processingTimeMS,
    this.query,
    this.params,
  });

  List<SearchResultItem> hits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nbHits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nbPages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hitsPerPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processingTimeMS;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? params;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResult &&
     other.hits == hits &&
     other.page == page &&
     other.nbHits == nbHits &&
     other.nbPages == nbPages &&
     other.hitsPerPage == hitsPerPage &&
     other.processingTimeMS == processingTimeMS &&
     other.query == query &&
     other.params == params;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hits.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (nbHits == null ? 0 : nbHits!.hashCode) +
    (nbPages == null ? 0 : nbPages!.hashCode) +
    (hitsPerPage == null ? 0 : hitsPerPage!.hashCode) +
    (processingTimeMS == null ? 0 : processingTimeMS!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (params == null ? 0 : params!.hashCode);

  @override
  String toString() => 'SearchResult[hits=$hits, page=$page, nbHits=$nbHits, nbPages=$nbPages, hitsPerPage=$hitsPerPage, processingTimeMS=$processingTimeMS, query=$query, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hits'] = this.hits;
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.nbHits != null) {
      json[r'nbHits'] = this.nbHits;
    } else {
      json[r'nbHits'] = null;
    }
    if (this.nbPages != null) {
      json[r'nbPages'] = this.nbPages;
    } else {
      json[r'nbPages'] = null;
    }
    if (this.hitsPerPage != null) {
      json[r'hitsPerPage'] = this.hitsPerPage;
    } else {
      json[r'hitsPerPage'] = null;
    }
    if (this.processingTimeMS != null) {
      json[r'processingTimeMS'] = this.processingTimeMS;
    } else {
      json[r'processingTimeMS'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.params != null) {
      json[r'params'] = this.params;
    } else {
      json[r'params'] = null;
    }
    return json;
  }

  /// Returns a new [SearchResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResult(
        hits: SearchResultItem.listFromJson(json[r'hits']),
        page: mapValueOfType<int>(json, r'page'),
        nbHits: mapValueOfType<int>(json, r'nbHits'),
        nbPages: mapValueOfType<int>(json, r'nbPages'),
        hitsPerPage: mapValueOfType<int>(json, r'hitsPerPage'),
        processingTimeMS: mapValueOfType<int>(json, r'processingTimeMS'),
        query: mapValueOfType<String>(json, r'query'),
        params: mapValueOfType<String>(json, r'params'),
      );
    }
    return null;
  }

  static List<SearchResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResult> mapFromJson(dynamic json) {
    final map = <String, SearchResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResult-objects as value to a dart map
  static Map<String, List<SearchResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

