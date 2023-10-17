//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Poll {
  /// Returns a new [Poll] instance.
  Poll({
    this.by,
    this.descendants,
    this.id,
    this.kids = const [],
    this.parts = const [],
    this.score,
    this.text,
    this.time,
    this.title,
    this.type,
  });

  /// The user who created the poll.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// The number of descendants (comments) for the poll.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? descendants;

  /// The poll's unique ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// An array of IDs of comments that are children of this poll.
  List<int> kids;

  /// An array of IDs of the parts of the poll.
  List<int> parts;

  /// The score of the poll.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  /// The text content of the poll.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Creation date of the poll in Unix Time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  /// The title of the poll.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The type of the item, which should be \"poll\" for a poll.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Poll &&
     other.by == by &&
     other.descendants == descendants &&
     other.id == id &&
     other.kids == kids &&
     other.parts == parts &&
     other.score == score &&
     other.text == text &&
     other.time == time &&
     other.title == title &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (by == null ? 0 : by!.hashCode) +
    (descendants == null ? 0 : descendants!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kids.hashCode) +
    (parts.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Poll[by=$by, descendants=$descendants, id=$id, kids=$kids, parts=$parts, score=$score, text=$text, time=$time, title=$title, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.descendants != null) {
      json[r'descendants'] = this.descendants;
    } else {
      json[r'descendants'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'kids'] = this.kids;
      json[r'parts'] = this.parts;
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
    return json;
  }

  /// Returns a new [Poll] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Poll? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Poll[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Poll[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Poll(
        by: mapValueOfType<String>(json, r'by'),
        descendants: mapValueOfType<int>(json, r'descendants'),
        id: mapValueOfType<int>(json, r'id'),
        kids: json[r'kids'] is List
            ? (json[r'kids'] as List).cast<int>()
            : const [],
        parts: json[r'parts'] is List
            ? (json[r'parts'] as List).cast<int>()
            : const [],
        score: mapValueOfType<int>(json, r'score'),
        text: mapValueOfType<String>(json, r'text'),
        time: mapValueOfType<int>(json, r'time'),
        title: mapValueOfType<String>(json, r'title'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<Poll> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Poll>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Poll.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Poll> mapFromJson(dynamic json) {
    final map = <String, Poll>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Poll.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Poll-objects as value to a dart map
  static Map<String, List<Poll>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Poll>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Poll.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

