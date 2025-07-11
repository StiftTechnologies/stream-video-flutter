//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CallResponse {
  /// Returns a new [CallResponse] instance.
  CallResponse({
    required this.backstage,
    this.blockedUserIds = const [],
    required this.captioning,
    this.channelCid,
    required this.cid,
    required this.createdAt,
    required this.createdBy,
    required this.currentSessionId,
    this.custom = const {},
    required this.egress,
    this.endedAt,
    required this.id,
    required this.ingress,
    this.joinAheadTimeSeconds,
    required this.recording,
    this.session,
    required this.settings,
    this.startsAt,
    this.team,
    this.thumbnails,
    required this.transcribing,
    required this.type,
    required this.updatedAt,
  });

  bool backstage;

  List<String> blockedUserIds;

  bool captioning;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelCid;

  /// The unique identifier for a call (<type>:<id>)
  String cid;

  /// Date/time of creation
  DateTime createdAt;

  UserResponse createdBy;

  String currentSessionId;

  /// Custom data for this object
  Map<String, Object> custom;

  EgressResponse egress;

  /// Date/time when the call ended
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endedAt;

  /// Call ID
  String id;

  CallIngressResponse ingress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? joinAheadTimeSeconds;

  bool recording;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CallSessionResponse? session;

  CallSettingsResponse settings;

  /// Date/time when the call will start
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startsAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? team;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ThumbnailResponse? thumbnails;

  bool transcribing;

  /// The type of call
  String type;

  /// Date/time of the last update
  DateTime updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CallResponse &&
          other.backstage == backstage &&
          _deepEquality.equals(other.blockedUserIds, blockedUserIds) &&
          other.captioning == captioning &&
          other.channelCid == channelCid &&
          other.cid == cid &&
          other.createdAt == createdAt &&
          other.createdBy == createdBy &&
          other.currentSessionId == currentSessionId &&
          _deepEquality.equals(other.custom, custom) &&
          other.egress == egress &&
          other.endedAt == endedAt &&
          other.id == id &&
          other.ingress == ingress &&
          other.joinAheadTimeSeconds == joinAheadTimeSeconds &&
          other.recording == recording &&
          other.session == session &&
          other.settings == settings &&
          other.startsAt == startsAt &&
          other.team == team &&
          other.thumbnails == thumbnails &&
          other.transcribing == transcribing &&
          other.type == type &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (backstage.hashCode) +
      (blockedUserIds.hashCode) +
      (captioning.hashCode) +
      (channelCid == null ? 0 : channelCid!.hashCode) +
      (cid.hashCode) +
      (createdAt.hashCode) +
      (createdBy.hashCode) +
      (currentSessionId.hashCode) +
      (custom.hashCode) +
      (egress.hashCode) +
      (endedAt == null ? 0 : endedAt!.hashCode) +
      (id.hashCode) +
      (ingress.hashCode) +
      (joinAheadTimeSeconds == null ? 0 : joinAheadTimeSeconds!.hashCode) +
      (recording.hashCode) +
      (session == null ? 0 : session!.hashCode) +
      (settings.hashCode) +
      (startsAt == null ? 0 : startsAt!.hashCode) +
      (team == null ? 0 : team!.hashCode) +
      (thumbnails == null ? 0 : thumbnails!.hashCode) +
      (transcribing.hashCode) +
      (type.hashCode) +
      (updatedAt.hashCode);

  @override
  String toString() =>
      'CallResponse[backstage=$backstage, blockedUserIds=$blockedUserIds, captioning=$captioning, channelCid=$channelCid, cid=$cid, createdAt=$createdAt, createdBy=$createdBy, currentSessionId=$currentSessionId, custom=$custom, egress=$egress, endedAt=$endedAt, id=$id, ingress=$ingress, joinAheadTimeSeconds=$joinAheadTimeSeconds, recording=$recording, session=$session, settings=$settings, startsAt=$startsAt, team=$team, thumbnails=$thumbnails, transcribing=$transcribing, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'backstage'] = this.backstage;
    json[r'blocked_user_ids'] = this.blockedUserIds;
    json[r'captioning'] = this.captioning;
    if (this.channelCid != null) {
      json[r'channel_cid'] = this.channelCid;
    } else {
      json[r'channel_cid'] = null;
    }
    json[r'cid'] = this.cid;
    json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    json[r'created_by'] = this.createdBy;
    json[r'current_session_id'] = this.currentSessionId;
    json[r'custom'] = this.custom;
    json[r'egress'] = this.egress;
    if (this.endedAt != null) {
      json[r'ended_at'] = this.endedAt!.toUtc().toIso8601String();
    } else {
      json[r'ended_at'] = null;
    }
    json[r'id'] = this.id;
    json[r'ingress'] = this.ingress;
    if (this.joinAheadTimeSeconds != null) {
      json[r'join_ahead_time_seconds'] = this.joinAheadTimeSeconds;
    } else {
      json[r'join_ahead_time_seconds'] = null;
    }
    json[r'recording'] = this.recording;
    if (this.session != null) {
      json[r'session'] = this.session;
    } else {
      json[r'session'] = null;
    }
    json[r'settings'] = this.settings;
    if (this.startsAt != null) {
      json[r'starts_at'] = this.startsAt!.toUtc().toIso8601String();
    } else {
      json[r'starts_at'] = null;
    }
    if (this.team != null) {
      json[r'team'] = this.team;
    } else {
      json[r'team'] = null;
    }
    if (this.thumbnails != null) {
      json[r'thumbnails'] = this.thumbnails;
    } else {
      json[r'thumbnails'] = null;
    }
    json[r'transcribing'] = this.transcribing;
    json[r'type'] = this.type;
    json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CallResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CallResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CallResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallResponse(
        backstage: mapValueOfType<bool>(json, r'backstage')!,
        blockedUserIds: json[r'blocked_user_ids'] is Iterable
            ? (json[r'blocked_user_ids'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        captioning: mapValueOfType<bool>(json, r'captioning')!,
        channelCid: mapValueOfType<String>(json, r'channel_cid'),
        cid: mapValueOfType<String>(json, r'cid')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        createdBy: UserResponse.fromJson(json[r'created_by'])!,
        currentSessionId: mapValueOfType<String>(json, r'current_session_id')!,
        custom: mapCastOfType<String, Object>(json, r'custom')!,
        egress: EgressResponse.fromJson(json[r'egress'])!,
        endedAt: mapDateTime(json, r'ended_at', r''),
        id: mapValueOfType<String>(json, r'id')!,
        ingress: CallIngressResponse.fromJson(json[r'ingress'])!,
        joinAheadTimeSeconds:
            mapValueOfType<int>(json, r'join_ahead_time_seconds'),
        recording: mapValueOfType<bool>(json, r'recording')!,
        session: CallSessionResponse.fromJson(json[r'session']),
        settings: CallSettingsResponse.fromJson(json[r'settings'])!,
        startsAt: mapDateTime(json, r'starts_at', r''),
        team: mapValueOfType<String>(json, r'team'),
        thumbnails: ThumbnailResponse.fromJson(json[r'thumbnails']),
        transcribing: mapValueOfType<bool>(json, r'transcribing')!,
        type: mapValueOfType<String>(json, r'type')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<CallResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CallResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallResponse> mapFromJson(dynamic json) {
    final map = <String, CallResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallResponse-objects as value to a dart map
  static Map<String, List<CallResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CallResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'backstage',
    'blocked_user_ids',
    'captioning',
    'cid',
    'created_at',
    'created_by',
    'current_session_id',
    'custom',
    'egress',
    'id',
    'ingress',
    'recording',
    'settings',
    'transcribing',
    'type',
    'updated_at',
  };
}
