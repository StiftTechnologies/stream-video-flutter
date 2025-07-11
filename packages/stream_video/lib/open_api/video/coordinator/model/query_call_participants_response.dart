//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryCallParticipantsResponse {
  /// Returns a new [QueryCallParticipantsResponse] instance.
  QueryCallParticipantsResponse({
    required this.call,
    required this.duration,
    this.members = const [],
    this.membership,
    this.ownCapabilities = const [],
    this.participants = const [],
    required this.totalParticipants,
  });

  CallResponse call;

  String duration;

  List<MemberResponse> members;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberResponse? membership;

  List<OwnCapability> ownCapabilities;

  /// List of call participants
  List<CallParticipantResponse> participants;

  int totalParticipants;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueryCallParticipantsResponse &&
          other.call == call &&
          other.duration == duration &&
          _deepEquality.equals(other.members, members) &&
          other.membership == membership &&
          _deepEquality.equals(other.ownCapabilities, ownCapabilities) &&
          _deepEquality.equals(other.participants, participants) &&
          other.totalParticipants == totalParticipants;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (call.hashCode) +
      (duration.hashCode) +
      (members.hashCode) +
      (membership == null ? 0 : membership!.hashCode) +
      (ownCapabilities.hashCode) +
      (participants.hashCode) +
      (totalParticipants.hashCode);

  @override
  String toString() =>
      'QueryCallParticipantsResponse[call=$call, duration=$duration, members=$members, membership=$membership, ownCapabilities=$ownCapabilities, participants=$participants, totalParticipants=$totalParticipants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'call'] = this.call;
    json[r'duration'] = this.duration;
    json[r'members'] = this.members;
    if (this.membership != null) {
      json[r'membership'] = this.membership;
    } else {
      json[r'membership'] = null;
    }
    json[r'own_capabilities'] = this.ownCapabilities;
    json[r'participants'] = this.participants;
    json[r'total_participants'] = this.totalParticipants;
    return json;
  }

  /// Returns a new [QueryCallParticipantsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryCallParticipantsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "QueryCallParticipantsResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "QueryCallParticipantsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryCallParticipantsResponse(
        call: CallResponse.fromJson(json[r'call'])!,
        duration: mapValueOfType<String>(json, r'duration')!,
        members: MemberResponse.listFromJson(json[r'members']),
        membership: MemberResponse.fromJson(json[r'membership']),
        ownCapabilities: OwnCapability.listFromJson(json[r'own_capabilities']),
        participants:
            CallParticipantResponse.listFromJson(json[r'participants']),
        totalParticipants: mapValueOfType<int>(json, r'total_participants')!,
      );
    }
    return null;
  }

  static List<QueryCallParticipantsResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <QueryCallParticipantsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryCallParticipantsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryCallParticipantsResponse> mapFromJson(dynamic json) {
    final map = <String, QueryCallParticipantsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryCallParticipantsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryCallParticipantsResponse-objects as value to a dart map
  static Map<String, List<QueryCallParticipantsResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<QueryCallParticipantsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryCallParticipantsResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'call',
    'duration',
    'members',
    'own_capabilities',
    'participants',
    'total_participants',
  };
}
