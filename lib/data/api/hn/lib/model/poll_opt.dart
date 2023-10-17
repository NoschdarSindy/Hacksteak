//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PollOpt {
  /// Returns a new [PollOpt] instance.
  PollOpt({
    this.by,
    this.id,
    this.poll,
    this.score,
    this.text,
    this.time,
    this.type,
  });

  /// The user who created the poll option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// The poll option's unique ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The ID of the poll associated with this option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? poll;

  /// The score of the poll option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  /// The text content of the poll option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Creation date of the poll option in Unix Time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  /// The type of the item, which should be \"pollopt\" for a poll option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PollOpt &&
     other.by == by &&
     other.id == id &&
     other.poll == poll &&
     other.score == score &&
     other.text == text &&
     other.time == time &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (by == null ? 0 : by!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (poll == null ? 0 : poll!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'PollOpt[by=$by, id=$id, poll=$poll, score=$score, text=$text, time=$time, type=$type]';

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
    if (this.poll != null) {
      json[r'poll'] = this.poll;
    } else {
      json[r'poll'] = null;
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
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [PollOpt] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PollOpt? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PollOpt[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PollOpt[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PollOpt(
        by: mapValueOfType<String>(json, r'by'),
        id: mapValueOfType<int>(json, r'id'),
        poll: mapValueOfType<int>(json, r'poll'),
        score: mapValueOfType<int>(json, r'score'),
        text: mapValueOfType<String>(json, r'text'),
        time: mapValueOfType<int>(json, r'time'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<PollOpt> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PollOpt>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PollOpt.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PollOpt> mapFromJson(dynamic json) {
    final map = <String, PollOpt>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PollOpt.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PollOpt-objects as value to a dart map
  static Map<String, List<PollOpt>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PollOpt>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PollOpt.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

