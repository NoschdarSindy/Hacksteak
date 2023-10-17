//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiItem {
  /// Returns a new [ApiItem] instance.
  ApiItem({
    this.by,
    this.id,
    this.score,
    this.text,
    this.time,
    this.title,
    this.type,
    this.url,
    this.descendants,
    this.kids = const [],
    this.parts = const [],
    this.poll,
    this.parent,
  });

  /// The user who created the ask post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// The ask post's unique ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The score of the ask post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  /// The text content of the ask post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Creation date of the ask post in Unix Time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  /// The title of the ask post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The type of the item, which should be \"story\" for an ask post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// The URL of the story.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// The number of descendants (e.g., comments) for the ask post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? descendants;

  /// List of item IDs that are direct descendants (e.g., comments) to the ask post.
  List<int> kids;

  /// An array of IDs of the parts of the poll.
  List<int> parts;

  /// The ID of the poll associated with this option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? poll;

  /// The ID of the parent item (e.g., the story) that this comment belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiItem &&
     other.by == by &&
     other.id == id &&
     other.score == score &&
     other.text == text &&
     other.time == time &&
     other.title == title &&
     other.type == type &&
     other.url == url &&
     other.descendants == descendants &&
     other.kids == kids &&
     other.parts == parts &&
     other.poll == poll &&
     other.parent == parent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (by == null ? 0 : by!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (descendants == null ? 0 : descendants!.hashCode) +
    (kids.hashCode) +
    (parts.hashCode) +
    (poll == null ? 0 : poll!.hashCode) +
    (parent == null ? 0 : parent!.hashCode);

  @override
  String toString() => 'ApiItem[by=$by, id=$id, score=$score, text=$text, time=$time, title=$title, type=$type, url=$url, descendants=$descendants, kids=$kids, parts=$parts, poll=$poll, parent=$parent]';

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
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
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
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.descendants != null) {
      json[r'descendants'] = this.descendants;
    } else {
      json[r'descendants'] = null;
    }
      json[r'kids'] = this.kids;
      json[r'parts'] = this.parts;
    if (this.poll != null) {
      json[r'poll'] = this.poll;
    } else {
      json[r'poll'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    return json;
  }

  /// Returns a new [ApiItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiItem(
        by: mapValueOfType<String>(json, r'by'),
        id: mapValueOfType<int>(json, r'id'),
        score: mapValueOfType<int>(json, r'score'),
        text: mapValueOfType<String>(json, r'text'),
        time: mapValueOfType<int>(json, r'time'),
        title: mapValueOfType<String>(json, r'title'),
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
        descendants: mapValueOfType<int>(json, r'descendants'),
        kids: json[r'kids'] is List
            ? (json[r'kids'] as List).cast<int>()
            : const [],
        parts: json[r'parts'] is List
            ? (json[r'parts'] as List).cast<int>()
            : const [],
        poll: mapValueOfType<int>(json, r'poll'),
        parent: mapValueOfType<int>(json, r'parent'),
      );
    }
    return null;
  }

  static List<ApiItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiItem> mapFromJson(dynamic json) {
    final map = <String, ApiItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiItem-objects as value to a dart map
  static Map<String, List<ApiItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

