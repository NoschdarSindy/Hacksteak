//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiComment {
  /// Returns a new [ApiComment] instance.
  ApiComment({
    this.by,
    this.id,
    this.kids = const [],
    this.parent,
    this.text,
    this.time,
    this.type,
  });

  /// The user who created the comment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// The comment's unique ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// List of item IDs that are direct descendants (e.g., replies) to the comment.
  List<int> kids;

  /// The ID of the parent item (e.g., the story) that this comment belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parent;

  /// The text content of the comment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Creation date of the comment in Unix Time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  /// The type of the item, which should be \"comment\" for a comment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiComment &&
     other.by == by &&
     other.id == id &&
     other.kids == kids &&
     other.parent == parent &&
     other.text == text &&
     other.time == time &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (by == null ? 0 : by!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kids.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ApiComment[by=$by, id=$id, kids=$kids, parent=$parent, text=$text, time=$time, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'kids'] = this.kids;
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ApiComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiComment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiComment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiComment(
        by: mapValueOfType<String>(json, r'by'),
        id: mapValueOfType<int>(json, r'id'),
        kids: json[r'kids'] is List
            ? (json[r'kids'] as List).cast<int>()
            : const [],
        parent: mapValueOfType<int>(json, r'parent'),
        text: mapValueOfType<String>(json, r'text'),
        time: mapValueOfType<int>(json, r'time'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ApiComment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiComment> mapFromJson(dynamic json) {
    final map = <String, ApiComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiComment-objects as value to a dart map
  static Map<String, List<ApiComment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiComment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

