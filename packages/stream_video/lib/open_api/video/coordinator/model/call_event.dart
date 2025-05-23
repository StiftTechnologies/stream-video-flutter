//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CallEvent {
  /// Returns a new [CallEvent] instance.
  CallEvent({
    this.category,
    this.component,
    required this.description,
    required this.endTimestamp,
    required this.internal,
    this.issueTags = const [],
    required this.kind,
    required this.severity,
    required this.timestamp,
    required this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? component;

  String description;

  int endTimestamp;

  bool internal;

  List<String> issueTags;

  String kind;

  int severity;

  int timestamp;

  String type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CallEvent &&
          other.category == category &&
          other.component == component &&
          other.description == description &&
          other.endTimestamp == endTimestamp &&
          other.internal == internal &&
          _deepEquality.equals(other.issueTags, issueTags) &&
          other.kind == kind &&
          other.severity == severity &&
          other.timestamp == timestamp &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (category == null ? 0 : category!.hashCode) +
      (component == null ? 0 : component!.hashCode) +
      (description.hashCode) +
      (endTimestamp.hashCode) +
      (internal.hashCode) +
      (issueTags.hashCode) +
      (kind.hashCode) +
      (severity.hashCode) +
      (timestamp.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'CallEvent[category=$category, component=$component, description=$description, endTimestamp=$endTimestamp, internal=$internal, issueTags=$issueTags, kind=$kind, severity=$severity, timestamp=$timestamp, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.component != null) {
      json[r'component'] = this.component;
    } else {
      json[r'component'] = null;
    }
    json[r'description'] = this.description;
    json[r'end_timestamp'] = this.endTimestamp;
    json[r'internal'] = this.internal;
    json[r'issue_tags'] = this.issueTags;
    json[r'kind'] = this.kind;
    json[r'severity'] = this.severity;
    json[r'timestamp'] = this.timestamp;
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [CallEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CallEvent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CallEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallEvent(
        category: mapValueOfType<String>(json, r'category'),
        component: mapValueOfType<String>(json, r'component'),
        description: mapValueOfType<String>(json, r'description')!,
        endTimestamp: mapValueOfType<int>(json, r'end_timestamp')!,
        internal: mapValueOfType<bool>(json, r'internal')!,
        issueTags: json[r'issue_tags'] is Iterable
            ? (json[r'issue_tags'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        kind: mapValueOfType<String>(json, r'kind')!,
        severity: mapValueOfType<int>(json, r'severity')!,
        timestamp: mapValueOfType<int>(json, r'timestamp')!,
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<CallEvent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CallEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallEvent> mapFromJson(dynamic json) {
    final map = <String, CallEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallEvent-objects as value to a dart map
  static Map<String, List<CallEvent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CallEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallEvent.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'description',
    'end_timestamp',
    'internal',
    'kind',
    'severity',
    'timestamp',
    'type',
  };
}
