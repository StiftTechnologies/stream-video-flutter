//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// All possibility of string to use
class OwnCapability {
  /// Instantiate a new enum with the provided [value].
  const OwnCapability._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const blockUsers = OwnCapability._(r'block-users');
  static const changeMaxDuration = OwnCapability._(r'change-max-duration');
  static const createCall = OwnCapability._(r'create-call');
  static const createReaction = OwnCapability._(r'create-reaction');
  static const enableNoiseCancellation =
      OwnCapability._(r'enable-noise-cancellation');
  static const endCall = OwnCapability._(r'end-call');
  static const joinBackstage = OwnCapability._(r'join-backstage');
  static const joinCall = OwnCapability._(r'join-call');
  static const joinEndedCall = OwnCapability._(r'join-ended-call');
  static const muteUsers = OwnCapability._(r'mute-users');
  static const pinForEveryone = OwnCapability._(r'pin-for-everyone');
  static const readCall = OwnCapability._(r'read-call');
  static const removeCallMember = OwnCapability._(r'remove-call-member');
  static const screenshare = OwnCapability._(r'screenshare');
  static const sendAudio = OwnCapability._(r'send-audio');
  static const sendVideo = OwnCapability._(r'send-video');
  static const startBroadcastCall = OwnCapability._(r'start-broadcast-call');
  static const startClosedCaptionsCall =
      OwnCapability._(r'start-closed-captions-call');
  static const startFrameRecordCall =
      OwnCapability._(r'start-frame-record-call');
  static const startRecordCall = OwnCapability._(r'start-record-call');
  static const startTranscriptionCall =
      OwnCapability._(r'start-transcription-call');
  static const stopBroadcastCall = OwnCapability._(r'stop-broadcast-call');
  static const stopClosedCaptionsCall =
      OwnCapability._(r'stop-closed-captions-call');
  static const stopFrameRecordCall = OwnCapability._(r'stop-frame-record-call');
  static const stopRecordCall = OwnCapability._(r'stop-record-call');
  static const stopTranscriptionCall =
      OwnCapability._(r'stop-transcription-call');
  static const updateCall = OwnCapability._(r'update-call');
  static const updateCallMember = OwnCapability._(r'update-call-member');
  static const updateCallPermissions =
      OwnCapability._(r'update-call-permissions');
  static const updateCallSettings = OwnCapability._(r'update-call-settings');

  /// List of all possible values in this [enum][OwnCapability].
  static const values = <OwnCapability>[
    blockUsers,
    changeMaxDuration,
    createCall,
    createReaction,
    enableNoiseCancellation,
    endCall,
    joinBackstage,
    joinCall,
    joinEndedCall,
    muteUsers,
    pinForEveryone,
    readCall,
    removeCallMember,
    screenshare,
    sendAudio,
    sendVideo,
    startBroadcastCall,
    startClosedCaptionsCall,
    startFrameRecordCall,
    startRecordCall,
    startTranscriptionCall,
    stopBroadcastCall,
    stopClosedCaptionsCall,
    stopFrameRecordCall,
    stopRecordCall,
    stopTranscriptionCall,
    updateCall,
    updateCallMember,
    updateCallPermissions,
    updateCallSettings,
  ];

  static OwnCapability? fromJson(dynamic value) =>
      OwnCapabilityTypeTransformer().decode(value);

  static List<OwnCapability> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OwnCapability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OwnCapability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OwnCapability] to String,
/// and [decode] dynamic data back to [OwnCapability].
class OwnCapabilityTypeTransformer {
  factory OwnCapabilityTypeTransformer() =>
      _instance ??= const OwnCapabilityTypeTransformer._();

  const OwnCapabilityTypeTransformer._();

  String encode(OwnCapability data) => data.value;

  /// Decodes a [dynamic value][data] to a OwnCapability.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OwnCapability? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'block-users':
          return OwnCapability.blockUsers;
        case r'change-max-duration':
          return OwnCapability.changeMaxDuration;
        case r'create-call':
          return OwnCapability.createCall;
        case r'create-reaction':
          return OwnCapability.createReaction;
        case r'enable-noise-cancellation':
          return OwnCapability.enableNoiseCancellation;
        case r'end-call':
          return OwnCapability.endCall;
        case r'join-backstage':
          return OwnCapability.joinBackstage;
        case r'join-call':
          return OwnCapability.joinCall;
        case r'join-ended-call':
          return OwnCapability.joinEndedCall;
        case r'mute-users':
          return OwnCapability.muteUsers;
        case r'pin-for-everyone':
          return OwnCapability.pinForEveryone;
        case r'read-call':
          return OwnCapability.readCall;
        case r'remove-call-member':
          return OwnCapability.removeCallMember;
        case r'screenshare':
          return OwnCapability.screenshare;
        case r'send-audio':
          return OwnCapability.sendAudio;
        case r'send-video':
          return OwnCapability.sendVideo;
        case r'start-broadcast-call':
          return OwnCapability.startBroadcastCall;
        case r'start-closed-captions-call':
          return OwnCapability.startClosedCaptionsCall;
        case r'start-frame-record-call':
          return OwnCapability.startFrameRecordCall;
        case r'start-record-call':
          return OwnCapability.startRecordCall;
        case r'start-transcription-call':
          return OwnCapability.startTranscriptionCall;
        case r'stop-broadcast-call':
          return OwnCapability.stopBroadcastCall;
        case r'stop-closed-captions-call':
          return OwnCapability.stopClosedCaptionsCall;
        case r'stop-frame-record-call':
          return OwnCapability.stopFrameRecordCall;
        case r'stop-record-call':
          return OwnCapability.stopRecordCall;
        case r'stop-transcription-call':
          return OwnCapability.stopTranscriptionCall;
        case r'update-call':
          return OwnCapability.updateCall;
        case r'update-call-member':
          return OwnCapability.updateCallMember;
        case r'update-call-permissions':
          return OwnCapability.updateCallPermissions;
        case r'update-call-settings':
          return OwnCapability.updateCallSettings;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OwnCapabilityTypeTransformer] instance.
  static OwnCapabilityTypeTransformer? _instance;
}
