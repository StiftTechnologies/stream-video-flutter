//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartClosedCaptionsResponse {
  /// Returns a new [StartClosedCaptionsResponse] instance.
  StartClosedCaptionsResponse({
    required this.duration,
  });

  String duration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StartClosedCaptionsResponse && other.duration == duration;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (duration.hashCode);

  @override
  String toString() => 'StartClosedCaptionsResponse[duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'duration'] = this.duration;
    return json;
  }

  /// Returns a new [StartClosedCaptionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartClosedCaptionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StartClosedCaptionsResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StartClosedCaptionsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartClosedCaptionsResponse(
        duration: mapValueOfType<String>(json, r'duration')!,
      );
    }
    return null;
  }

  static List<StartClosedCaptionsResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StartClosedCaptionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartClosedCaptionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartClosedCaptionsResponse> mapFromJson(dynamic json) {
    final map = <String, StartClosedCaptionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartClosedCaptionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartClosedCaptionsResponse-objects as value to a dart map
  static Map<String, List<StartClosedCaptionsResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StartClosedCaptionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartClosedCaptionsResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'duration',
  };
}
